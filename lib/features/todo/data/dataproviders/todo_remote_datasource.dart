import 'package:recharger/features/todo/data/models/todo_model.dart';
import 'package:recharger/features/todo/domain/entities/todo.dart';

abstract class ToDoRemoteDataSource {
  Future<ToDoModel> getTodo(int id);
  Future<ToDoModel> getAllTodo();
  Future<ToDoModel> addTodo(Todo todo);
  Future<ToDoModel> removeTodo(int id);
}
