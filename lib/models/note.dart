import 'package:json_annotation/json_annotation.dart';

part 'note.g.dart';

@JsonSerializable(explicitToJson: true)
class Note {
  int id;
  String body;

  Note({
    required this.id,
    required this.body,
  });

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

  Map<String, dynamic> toJson() => _$NoteToJson(this);
}
