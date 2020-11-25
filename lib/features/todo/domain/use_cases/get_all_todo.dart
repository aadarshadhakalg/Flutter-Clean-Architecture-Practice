import 'package:dartz/dartz.dart';
import 'package:recharger/features/todo/domain/repositories/todo_repositories.dart';
import '../../../../core/errors/failures.dart';
import '../entities/todo.dart';

class GetAllTodo {
  final TodoRepositories repository;

  GetAllTodo(this.repository);

  Future<Either<Failure, List<Todo>>> execute() async {
    return await repository.getAllTodo();
  }
}
