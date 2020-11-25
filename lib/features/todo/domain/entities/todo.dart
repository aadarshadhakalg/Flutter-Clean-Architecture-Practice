import 'package:meta/meta.dart';

class Todo {
  final String id;
  final String title;
  final bool completed;

  Todo({
    @required this.id,
    @required this.title,
    @required this.completed,
  });

  bool operator ==(Object another) {
    if (another is! Todo) return false;

    Todo other = another;

    if (this.id == other.id &&
        this.completed == other.completed &&
        this.title == other.title) {
      return true;
    }

    return false;
  }

  @override
  int get hashCode {
    return 7 * title.hashCode + id.hashCode + completed.hashCode;
  }
}
