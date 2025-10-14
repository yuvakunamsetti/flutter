import 'package:flutter/material.dart';

void main() => runApp(MyStatelessApp());

class MyStatelessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stateless Widget")),
        body: Center(
          child: Text(
            "Hello! I'm a Stateless Widget 😊",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(MyStatefulApp());

class MyStatefulApp extends StatefulWidget {
  @override
  _MyStatefulAppState createState() => _MyStatefulAppState();
}

class _MyStatefulAppState extends State<MyStatefulApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stateful Widget")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You pressed button $count times",
                  style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text("Press Me"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
