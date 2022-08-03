import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

final databaseController = ChangeNotifierProvider((ref) {
  final database = ref.watch(databaseService);

  return DatabaseController(database);
});

class DatabaseController with ChangeNotifier {
  DatabaseController(this._database);

  late final DatabaseService _database;

  String get id => _database.id;

  String get theme => _database.theme;

  void toggleTheme(bool mode) {
    (mode)
        ? _database.toggleSaveTheme("dark")
        : _database.toggleSaveTheme("system");

    notifyListeners();
  }
}

final databaseService = Provider<DatabaseService>((_) => DatabaseService());

class DatabaseService {
  late final Box<String> uuidBox;
  late final Box<String> themeBox;

  String get id => uuidBox.values.first;
  String get theme => themeBox.values.first;

  Future<void> initDatabase() async {
    await Hive.openBox<String>('families');
    await Hive.openBox<String>('familyRelatedGenera');
    await getUser();
    await getTheme();
  }

  Future<void> getTheme() async {
    await Hive.openBox<String>('theme').then((value) => themeBox = value);
    if (themeBox.values.isEmpty) {
      themeBox.add('light');
    }
  }

  Future<void> toggleSaveTheme(String mode) async =>
      await themeBox.put(0, mode);

  Future<void> getUser() async {
    await Hive.openBox<String>('uuid').then((value) => uuidBox = value);
    if (uuidBox.values.isEmpty) {
      final uuid = const Uuid().v1();
      uuidBox.add(uuid);
    }
  }
}
