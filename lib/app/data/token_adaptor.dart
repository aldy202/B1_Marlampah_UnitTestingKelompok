import 'package:firedart/firedart.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Kelas TokenAdapter merupakan kelas yang digunakan untuk mendapatkan data token.

class TokenAdapter extends TypeAdapter<Token> {
  @override
  final typeId = 42;

  @override
  void write(BinaryWriter writer, Token token) =>
      writer.writeMap(token.toMap());

  @override
  Token read(BinaryReader reader) =>
      Token.fromMap(reader.readMap().map<String, dynamic>(
          (key, value) => MapEntry<String, dynamic>(key, value)));
}
