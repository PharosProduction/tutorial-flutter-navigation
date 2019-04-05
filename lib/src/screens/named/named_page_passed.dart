import 'package:flutter/material.dart';

class NamedPagePassed extends StatefulWidget {
  static final route = '/namedPagePassed';
  final String argument1;
  final String argument2;

  const NamedPagePassed({this.argument1, this.argument2, Key key}) : super(key: key);

  @override
  _NamedPagePassedState createState() => _NamedPagePassedState();
}

class _NamedPagePassedState extends State<NamedPagePassed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Named Routing Passed"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _buildFirstArgumentField(widget.argument1),
            _buildSecondArgumentField(widget.argument2),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstArgumentField(String argument1) {
    return Text('Argument one - $argument1');
  }

  Widget _buildSecondArgumentField(String argument2) {
    return Text('Argument two - $argument2');
  }
}
