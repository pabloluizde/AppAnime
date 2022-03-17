import 'dart:convert';

class PersonagensModel {
  final String personagem;
  final int idade;
  final double altura;
  final int peso;
  final String imagem;
  final String fundo;

  PersonagensModel({
    required this.personagem,
    required this.idade,
    required this.altura,
    required this.peso,
    required this.imagem,
    required this.fundo,
  });

  Map<String, dynamic> toMap() {
    return {
      'personagem': personagem,
      'idade': idade,
      'altura': altura,
      'peso': peso,
      'imagem': imagem,
      'fundo': fundo
    };
  }

  factory PersonagensModel.fromMap(Map<String, dynamic> map) {
    return PersonagensModel(
      personagem: map['personagem'],
      idade: map['idade'],
      altura: map['altura'],
      peso: map['peso'],
      imagem: map['imagem'],
      fundo: map['fundo'],
    );
  }
  String toJson() => json.encode(toMap());

  factory PersonagensModel.fromJson(String source) =>
      PersonagensModel.fromMap(json.decode(source));
}
