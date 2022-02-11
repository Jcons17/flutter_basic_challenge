import '../domain.dart';

abstract class EmployeeRepository {
  Future<List<Employee>> getAll();
}
