import 'package:dartz/dartz.dart';
import 'package:recharger/features/todo/domain/repositories/todo_repositories.dart';
import '../../../../core/errors/failures.dart';
import '../entities/todo.dart';

class AddTodo{
  final TodoRepositories repository;

  AddTodo(this.repository);

  Future<Either<Failure,Todo>> execute(Todo todo) async{
    return await repository.addTodo(todo);
  }
}