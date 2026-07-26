import 'package:hive/hive.dart';
import '../database/hive_database.dart';
import '../models/activity.dart';
import 'base_service.dart';

class ActivityService extends BaseService<Activity> {
  @override
  Box<Activity> get box => HiveDatabase.activities;

  List<Activity> getByDomain(String domainId) {
    return box.values.where((a) => a.domainId == domainId).toList();
  }
}