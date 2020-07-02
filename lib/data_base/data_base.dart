import 'dart:async';
import 'package:floor/floor.dart';
import 'package:kanbanProject/entitys/entity_activity.dart';
import 'package:kanbanProject/entitys/entity_project.dart';
import 'package:kanbanProject/entitys/entity_status.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'data_base.g.dart';

@Database(version: 1, entities: [ProjectEntity, ActivityEntity, StatusEntity])
abstract class AppDatabase extends FloorDatabase {}
