import 'package:beautiflower/models/family.dart';
import 'package:beautiflower/models/genus.dart';
import 'package:beautiflower/models/photos.dart';
import 'package:beautiflower/models/species.dart';
import 'package:beautiflower/src/services/model.dart';
import 'package:beautiflower/src/services/pagination/pagination_notifier.dart';
import 'package:beautiflower/src/services/pagination/pagination_state.dart';
import 'package:beautiflower/src/services/repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authStateProvider = StateProvider((ref) => FirebaseAuth.instance);

final speciesStateProvider = StateProvider<SpeciesState?>((ref) => null);

final familyStateProvider = StateProvider<FamilyState?>((ref) => null);

final genusStateProvider = StateProvider<GenusState?>((ref) => null);

final bottomPageIndexProvider = StateProvider<int>((ref) => 0);

final appBarTitleProvider = StateProvider<String>((ref) => "너의 이름은");

final backPressTimeProvider = StateProvider((ref) => DateTime.now());

final pageControllerProvider = StateProvider((ref) => PageController());

final tabControllerIndexStateProvider = StateProvider((ref) => 0);

final textEditingControllerProvider =
    StateProvider.autoDispose<TextEditingController>(
  (ref) {
    final controller = TextEditingController();
    ref.onDispose(
      () {
        controller.dispose();
      },
    );
    return controller;
  },
);

final queryStringProvider = StateProvider<String>((ref) => "");

final repositoryProvider = Provider<Repository>((ref) => Repository());

final nextPhotosUrlProvider = StateProvider<String?>((ref) => null);

final familyListProvider =
    FutureProvider.family<List<FamilyModel>, String>((ref, query) {
  return ref.read(repositoryProvider).fetchFamilies(query: query);
});

final genusListProvider =
    StateNotifierProvider<PaginationNotifier<Genus>, PaginationState<Genus>>(
        (ref) {
  final query = ref.watch(queryStringProvider.state).state;
  final familyState = ref.watch(familyStateProvider);

  return PaginationNotifier(
    fetchNextItems: (url) {
      return ref
          .read(repositoryProvider)
          .fetchGenera(nextUrl: url, familyId: familyState?.id, query: query);
    },
  )..init();
});

final speciesListProvider = StateNotifierProvider<PaginationNotifier<Species>,
    PaginationState<Species>>((ref) {
  final query = ref.watch(queryStringProvider.state).state;
  final genusState = ref.watch(genusStateProvider);
  final familyState = ref.watch(familyStateProvider);

  return PaginationNotifier(
    fetchNextItems: (url) {
      return ref.read(repositoryProvider).fetchSpecies(
          familyId: familyState?.id,
          nextUrl: url,
          genusId: genusState?.id,
          query: query);
    },
  )..init();
});

final photosProvider =
    StateNotifierProvider<PaginationNotifier<Photo>, PaginationState<Photo>>(
  (ref) {
    final query = ref.watch(queryStringProvider.state);
    return PaginationNotifier(
      fetchNextItems: (url) {
        return ref
            .read(repositoryProvider)
            .fetchPhotos(nextUrl: url, query: query.state);
      },
    )..init();
  },
);
