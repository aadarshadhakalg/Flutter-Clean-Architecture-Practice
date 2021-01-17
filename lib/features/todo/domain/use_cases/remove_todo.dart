import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/todo_repositories.dart';
import '../../../../core/errors/failures.dart';
import '../entities/todo.dart';

class RemoveTodo implements UseCase<Todo, Params> {
  final TodoRepositories repository;

  RemoveTodo(this.repository);

  Future<Either<Failure, Todo>> call(Params params) async {
    return await repository.removeTodo(params.id);
  }
}

class Params extends Equatable {
  final int id;

  Params(this.id);

  @override
  List<Object> get props => [id];
}
