import 'package:flutter/material.dart';
import 'package:recharger/core/routes/route_generators.dart';
import 'features/todo/presentation/screens/homescreen.dart';

main() => runApp(Recharger());

class Recharger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
