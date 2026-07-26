import 'package:hive/hive.dart';
import '../database/hive_database.dart';
import '../models/domain.dart';
import 'base_service.dart';

class DomainService extends BaseService<Domain> {
  @override
  Box<Domain> get box => HiveDatabase.domains;

  List<Domain> getSkills() {
    return box.values.where((d) => d.type == DomainType.skill).toList();
  }

  List<Domain> getCategories() {
    return box.values.where((d) => d.type == DomainType.category).toList();
  }

  List<Domain> getByType(DomainType type) {
    return box.values.where((d) => d.type == type).toList();
  }

  int get skillsCount => getSkills().length;

  int get categoriesCount => getCategories().length;
}