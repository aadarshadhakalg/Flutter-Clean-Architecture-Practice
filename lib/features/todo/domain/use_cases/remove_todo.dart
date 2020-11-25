import 'package:dartz/dartz.dart';
import 'package:recharger/features/todo/domain/repositories/todo_repositories.dart';
import '../../../../core/errors/failures.dart';
import '../entities/todo.dart';

class RemoveTodo{
  final TodoRepositories repository;

  RemoveTodo(this.repository);

  Future<Either<Failure,Todo>> execute(int id) async{
    return await repository.removeTodo(id);
  }
}