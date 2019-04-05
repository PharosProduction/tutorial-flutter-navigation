import 'package:flutter/material.dart';
import 'package:tutorial_flutter_navigation/src/screens/simple/simple_page_two.dart';

class SimplePageOne extends StatefulWidget {
  static final route = '/simple';

  @override
  _SimplePageOneState createState() => _SimplePageOneState();
}

class _SimplePageOneState extends State<SimplePageOne> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _controller.text = 'Empty value';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Routing'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _textResult(),
            _navigateSecondScreenButton(context),
          ],
        ),
      ),
    );
  }

  Widget _textResult() {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: TextField(
        controller: _controller,
        enabled: false,
      ),
    );
  }

  Widget _navigateSecondScreenButton(BuildContext context) {
    return RaisedButton(
      child: Text("Navigate Second Screen"),
      onPressed: () async {
        final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => SimplePageTwo()));

        if (result != null) {
          setState(() {
            _controller.text = result;
          });
        }
      },
    );
  }
}