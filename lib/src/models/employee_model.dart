import 'dart:convert';

List<Employee> employeeFromJson(String str) =>
    List<Employee>.from(json.decode(str).map((x) => Employee.fromJson(x)));

String employeeToJson(List<Employee> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Employee {
  int? id;
  String? nombre;
  String? imagen;
  String? comida;
  String? especie;

  Employee({
    this.id,
    this.nombre,
    this.imagen,
    this.comida,
    this.especie,
  });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        id: json["id"],
        nombre: json["nombre"],
        especie: json["especie"],
        imagen: json["imagen"],
        comida: json["comida"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "especie": especie,
        "imagen": imagen,
        "comida": comida,
      };
}
