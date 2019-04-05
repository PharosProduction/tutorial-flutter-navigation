import 'package:flutter/material.dart';
import 'package:tutorial_flutter_navigation/src/screens/named/named_page_arguments.dart';

class NamedPageExtracted extends StatefulWidget {
  static final route = '/namedPageExtracted';

  @override
  _NamedPageExtractedState createState() => _NamedPageExtractedState();
}

class _NamedPageExtractedState extends State<NamedPageExtracted> {
  @override
  Widget build(BuildContext context) {
    final NamedPageArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Named Routing Extracted Arguments"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _buildFirstArgumentField(args.argument1),
            _buildSecondArgumentField(args.argument2),
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
