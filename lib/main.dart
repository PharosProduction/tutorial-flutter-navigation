import 'package:flutter/material.dart';
import 'package:tutorial_flutter_navigation/src/screens/home.dart';
import 'package:tutorial_flutter_navigation/src/screens/named/named_page_arguments.dart';
import 'package:tutorial_flutter_navigation/src/screens/named/named_page_extracted.dart';
import 'package:tutorial_flutter_navigation/src/screens/named/named_page_passed.dart';
import 'package:tutorial_flutter_navigation/src/screens/simple/simple_page_one.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.route,
      onGenerateRoute: (settings) {
        if (settings.name == NamedPagePassed.route) {
          final NamedPageArguments args = settings.arguments;
          print(args);
          return MaterialPageRoute(
            builder: (context) {
              return NamedPagePassed(argument1: args.argument1, argument2: args.argument2);
            },
          );
        }
      },
      routes: {
        HomePage.route: (context) => HomePage(),
        SimplePageOne.route: (context) => SimplePageOne(),
        NamedPageExtracted.route: (context) => NamedPageExtracted(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
