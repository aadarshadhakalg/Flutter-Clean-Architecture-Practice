import 'package:dartz/dartz.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/todo_repositories.dart';
import '../../../../core/errors/failures.dart';
import '../entities/todo.dart';

class GetAllTodo implements UseCase<List<Todo>, NoParams> {
  final TodoRepositories repository;

  GetAllTodo(this.repository);

  Future<Either<Failure, List<Todo>>> call(NoParams noParams) async {
    return await repository.getAllTodo();
  }
}
