import 'package:floor/floor.dart';

import 'entity_base.dart';

@Entity(tableName: 'Status')
class StatusEntity extends EntityBase {
  final String name;

  StatusEntity({int id, String createdAt, String updateAt, this.name})
      : super(id, createdAt, updateAt);
}
