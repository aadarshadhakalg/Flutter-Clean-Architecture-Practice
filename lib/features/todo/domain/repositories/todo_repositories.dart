import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/todo.dart';

abstract class TodoRepositories {
  Future<Either<Failure, Todo>> getTodo(int id);
  Future<Either<Failure, List<Todo>>> getAllTodo();
  Future<Either<Failure, Todo>> addTodo(Todo todo);
  Future<Either<Failure, Todo>> removeTodo(int id);
}
