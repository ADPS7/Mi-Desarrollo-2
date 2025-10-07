class Carro{
  String? marca;
  String? placa;
  String? color;
  String? velocidad;
  
  
  Carro(Map map){
    marca = map['marca'];
    placa = map['placa'];
    color = map['color'];
    velocidad = map['velocidad'];

  }
}