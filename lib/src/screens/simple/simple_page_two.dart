import 'package:flutter/material.dart';

class SimplePageTwo extends StatefulWidget {
  @override
  _SimplePageTwoState createState() => _SimplePageTwoState();
}

class _SimplePageTwoState extends State<SimplePageTwo> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Navigation Page Two'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _textField(),
            _backButton(context),
          ],
        ),
      ),
    );
  }

  Widget _textField() {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: TextField(
        autofocus: true,
        textInputAction: TextInputAction.done,
        controller: _controller,
      ),
    );
  }

  Widget _backButton(BuildContext context) {
    return RaisedButton(
      child: Text("Back"),
      onPressed: () {
        final result = _controller.value.text;
        Navigator.pop(context, result);
      },
    );
  }
}
