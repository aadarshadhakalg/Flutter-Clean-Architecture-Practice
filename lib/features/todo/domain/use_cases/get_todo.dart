import 'package:dartz/dartz.dart';
import 'package:recharger/features/todo/domain/repositories/todo_repositories.dart';
import "../../../../core/errors/failures.dart";
import '../entities/todo.dart';

class GetTodo {
  final TodoRepositories repository;

  GetTodo(this.repository);

  Future<Either<Failure, Todo>> execute(int id) async {
    return await repository.getTodo(id);
  }
}
