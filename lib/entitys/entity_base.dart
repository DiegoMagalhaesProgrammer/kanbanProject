import 'package:floor/floor.dart';

class EntityBase {
  EntityBase(this.id, this.createdAt, this.updateAt);
  @PrimaryKey(autoGenerate: true)
  @ColumnInfo(name: 'id')
  final int id;
  final String createdAt;
  final String updateAt;
}
