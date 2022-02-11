import 'dart:convert';

import '../../core.dart';

class EmployeeModel implements Employee {
  @override
  final int employee_age;

  @override
  final String employee_name;

  @override
  final int employee_salary;

  @override
  final int id;

  EmployeeModel({
    required this.employee_age,
    required this.employee_name,
    required this.employee_salary,
    required this.id,
  });

  EmployeeModel copyWith({
    int? employee_age,
    String? employee_name,
    int? employee_salary,
    int? id,
  }) {
    return EmployeeModel(
      employee_age: employee_age ?? this.employee_age,
      employee_name: employee_name ?? this.employee_name,
      employee_salary: employee_salary ?? this.employee_salary,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'employee_age': employee_age,
      'employee_name': employee_name,
      'employee_salary': employee_salary,
      'id': id,
    };
  }

  factory EmployeeModel.fromMap(Map<String, dynamic> map) {
    return EmployeeModel(
      employee_age: map['employee_age'],
      employee_name: map['employee_name'],
      employee_salary: map['employee_salary'],
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EmployeeModel.fromJson(String source) => EmployeeModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'EmployeeModel(employee_age: $employee_age, employee_name: $employee_name, employee_salary: $employee_salary, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EmployeeModel &&
        other.employee_age == employee_age &&
        other.employee_name == employee_name &&
        other.employee_salary == employee_salary &&
        other.id == id;
  }

  @override
  int get hashCode {
    return employee_age.hashCode ^ employee_name.hashCode ^ employee_salary.hashCode ^ id.hashCode;
  }
}
