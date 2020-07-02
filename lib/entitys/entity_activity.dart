import 'package:floor/floor.dart';

import 'entity_base.dart';
import 'entity_project.dart';
import 'entity_status.dart';

@Entity(
  tableName: 'Activity',
  foreignKeys: [
    ForeignKey(
        childColumns: ['_status'],
        parentColumns: ['id'],
        entity: ProjectEntity),
    ForeignKey(
        childColumns: ['_project'],
        parentColumns: ['id'],
        entity: StatusEntity),
  ],
)
class ActivityEntity extends EntityBase {
  final String title;
  final String description;
  final String assets;
  @ColumnInfo(name: '_status', nullable: false)
  final int status;
  @ColumnInfo(name: '_project', nullable: false)
  final int project;

  ActivityEntity(int id, String createdAt, String updateAt, this.title,
      this.description, this.assets, this.status, this.project)
      : super(id, createdAt, updateAt);
}
