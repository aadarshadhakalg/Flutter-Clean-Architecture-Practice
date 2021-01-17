import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/todo_repositories.dart';
import "../../../../core/errors/failures.dart";
import '../entities/todo.dart';
import 'package:meta/meta.dart';

class GetTodo implements UseCase<Todo, Params> {
  final TodoRepositories repository;

  GetTodo(this.repository);

  Future<Either<Failure, Todo>> call(Params params) async {
    return await repository.getTodo(params.id);
  }
}

class Params extends Equatable {
  @required
  final int id;

  Params(this.id);

  @override
  List<Object> get props => [id];
}
