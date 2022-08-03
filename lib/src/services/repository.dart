import 'dart:convert';
import 'dart:io';

import 'package:beautiflower/models/family.dart';
import 'package:beautiflower/models/genus.dart';
import 'package:beautiflower/models/photos.dart';
import 'package:beautiflower/models/species.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';

class Repository {
  Future<List<FamilyModel>> fetchFamilies({required String query}) async {
    final json = await JsonRepository().fetchFamilies(query: query);
    return compute(familyModelFromJson, json);
  }

  Future<GenusList> fetchGenera(
      {required int? familyId, required String query, String? nextUrl}) async {
    final json = await JsonRepository()
        .fetchGenera(nextUrl: nextUrl, familyId: familyId, query: query);
    return compute(genusListFromJson, json);
  }

  Future<SpeciesList> fetchSpecies(
      {required int? genusId,
      required int? familyId,
      required String query,
      String? nextUrl}) async {
    final json = await JsonRepository().fetchSpecies(
        nextUrl: nextUrl, familyId: familyId, genusId: genusId, query: query);
    return compute(speciesListFromJson, json);
  }

  Future<Photos> fetchPhotos({required String query, String? nextUrl}) async {
    final json =
        await JsonRepository().fetchPhotos(nextUrl: nextUrl, query: query);
    return compute(photosFromJson, json);
  }
}

class JsonRepository {
  final baseUrl = kDebugMode ? 'http://10.0.2.2:8000' : dotenv.env['BASEURL']!;

  Future<String> _get(String endpoint, {bool next = false}) async {
    final url = next ? endpoint : join(baseUrl, endpoint);
    final request = await http.get(Uri.parse(url)).timeout(
        const Duration(seconds: 5),
        onTimeout: () => http.Response('Error', 408));
    if (request.statusCode == 200) {
      return utf8.decode(request.bodyBytes);
    } else {
      throw const SocketException("응답 시간 초과. 서버가 응답하지 않습니다.");
    }
  }

  Future<String> fetchFamilies({required String query}) async {
    if (query.isNotEmpty) {
      return await compute(_get, 'families/?query=$query');
    }
    final box = Hive.box<String>('families');
    final isExists = box.containsKey(0);
    if (isExists) {
      return box.getAt(0)!;
    }
    final json = await _get('families/');
    await box.put(0, json);

    return json;
  }

  Future<String> fetchGenera({
    required int? familyId,
    required String query,
    String? nextUrl,
  }) async {
    if (nextUrl != null) {
      return await _get(nextUrl, next: true);
    }
    return await compute(
        _get, 'genera/?family=${familyId?.toString() ?? ""}&query=$query');
  }

  Future<String> fetchSpecies({
    required int? familyId,
    required int? genusId,
    required String query,
    String? nextUrl,
  }) async {
    if (nextUrl != null) {
      return await _get(nextUrl, next: true);
    }
    return await compute(_get,
        'species/?family=${familyId?.toString() ?? ""}&genus=${genusId?.toString() ?? ""}&query=$query');
  }

  Future<String> fetchPhotos({String query = "", String? nextUrl}) async {
    if (nextUrl != null) {
      return await _get(nextUrl, next: true);
    }
    return await compute(_get, 'photos/?species=$query');
  }
}
