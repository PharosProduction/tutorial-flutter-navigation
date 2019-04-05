import 'package:flutter/material.dart';
import 'package:tutorial_flutter_navigation/src/screens/named/named_page_arguments.dart';
import 'package:tutorial_flutter_navigation/src/screens/named/named_page_extracted.dart';
import 'package:tutorial_flutter_navigation/src/screens/named/named_page_passed.dart';

class HomePage extends StatefulWidget {
  static final route = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial Flutter Navigation'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            _simpleNavigationButton(context),
            _namedNavigationButtonExtracted(context),
            _namedNavigationButtonPassed(context),
          ],
        ),
      ),
    );
  }

  Widget _simpleNavigationButton(BuildContext context) {
    return RaisedButton(
      child: Text('Simple Navigation'),
      onPressed: () {
        Navigator.pushNamed(context, '/simple');
      },
    );
  }

  Widget _namedNavigationButtonExtracted(BuildContext context) {
    return RaisedButton(
      child: Text('Named Routing Extracted'),
      onPressed: () {
        final arguments = NamedPageArguments('Extracted One', 'Extracted Two');
        Navigator.pushNamed(context, NamedPageExtracted.route, arguments: arguments);
      },
    );
  }

  Widget _namedNavigationButtonPassed(BuildContext context) {
    return RaisedButton(
      child: Text('Named Routing Passed'),
      onPressed: () {
        final arguments = NamedPageArguments('Passed One', 'Passed Two');
        Navigator.pushNamed(context, NamedPagePassed.route, arguments: arguments);
      },
    );
  }
}
