import 'package:flutter/material.dart';

@immutable
class FamilyState {
  final int id;
  final String? nameKor;
  final String name;

  const FamilyState(
      {required this.id, required this.nameKor, required this.name});
}

@immutable
class GenusState {
  final int id;
  final String? nameKor;
  final String name;

  const GenusState(
      {required this.id, required this.nameKor, required this.name});
}

@immutable
class SpeciesState {
  final int id;
  final String? nameKor;
  final String name;

  const SpeciesState(
      {required this.id, required this.nameKor, required this.name});
}
