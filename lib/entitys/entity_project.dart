import 'package:floor/floor.dart';

import 'entity_base.dart';

@Entity(tableName: 'Projects')
class ProjectEntity extends EntityBase {
  ProjectEntity(
      {int id,
      String createdAt,
      String updateAt,
      this.title,
      this.description,
      this.assets})
      : super(id, createdAt, updateAt);
  final String title;
  final String description;
  final String assets;
}
