import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/todo_repositories.dart';
import '../../../../core/errors/failures.dart';
import '../entities/todo.dart';

class AddTodo implements UseCase<Todo, Params> {
  final TodoRepositories repository;

  AddTodo(this.repository);

  @override
  Future<Either<Failure, Todo>> call(Params params) async {
    return await repository.addTodo(params.todo);
  }
}

class Params extends Equatable {
  final Todo todo;

  Params(this.todo);
  @override
  List<Object> get props => [todo];
}
