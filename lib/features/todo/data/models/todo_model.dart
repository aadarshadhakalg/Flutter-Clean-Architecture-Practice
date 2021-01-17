import 'package:flutter/cupertino.dart';
import 'package:recharger/features/todo/domain/entities/todo.dart';

class ToDoModel extends Todo {
  ToDoModel({
    @required String title,
    @required String id,
    @required bool completed,
  }) : super(completed: completed, title: title, id: id);

  factory ToDoModel.fromJson(Map<String, dynamic> json) {
    return ToDoModel(
      completed: json['completed'],
      id: json['id'],
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'completed': completed,
      'title': title,
    };
  }
}
