import 'package:recharger/features/todo/domain/entities/todo.dart';
import 'package:recharger/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:recharger/features/todo/domain/repositories/todo_repositories.dart';

class ToDORepositoryImplementation extends TodoRepositories {
  @override
  Future<Either<Failure, Todo>> addTodo(Todo todo) {
    // TODO: implement addTodo
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Todo>>> getAllTodo() {
    // TODO: implement getAllTodo
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Todo>> getTodo(int id) {
    // TODO: implement getTodo
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Todo>> removeTodo(int id) {
    // TODO: implement removeTodo
    throw UnimplementedError();
  }
}
