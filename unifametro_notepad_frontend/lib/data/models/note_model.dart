import '../../domain/entities/note.dart';

class NoteModel extends Note {
  NoteModel({
    required super.id,
    required super.title,
    required super.description,
    required super.createdAt,
  });

  factory NoteModel.fromJson(Map<String, dynamic> json) {
    return NoteModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      createdAt:
          DateTime.parse(json['createdAt'] ?? DateTime.now().toIso8601String()),
    );
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'createdAt': createdAt.toIso8601String(),
      };
}
