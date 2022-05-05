import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  @override
  State<Sandbox> createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double _margin = 0;
  double _opacity = 1;
  double _width = 200;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    // _width = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 1000),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _margin = 50;
                  });
                },
                child: Text("Animate margin")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _width = MediaQuery.of(context).size.width;
                  });
                },
                child: Text("Animate width"))
          ],
        ),
      ),
    );
  }
}
