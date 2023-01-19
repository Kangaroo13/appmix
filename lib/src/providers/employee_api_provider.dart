import 'package:appmix/src/models/employee_model.dart';
import 'package:appmix/src/providers/db_provider.dart';
import 'package:dio/dio.dart';

class EmployeeApiProvider {
  Future<List<Employee?>> getAllEmployees() async {
    var url = "https://demo0553834.mockable.io/animales";
    Response response = await Dio().get(url);

    return (response.data as List).map((employee) {
      // ignore: avoid_print
      print('Inserting $employee');
      DBProvider.db.createEmployee(Employee.fromJson(employee));
    }).toList();
  }
}
