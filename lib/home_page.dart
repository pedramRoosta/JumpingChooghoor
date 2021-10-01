import 'package:flutter/material.dart';
import 'package:jumping_chooghoor/bird.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double yAxis;
  @override
  void initState() {
    super.initState();
    yAxis = 0;
  }

  void _jump() {
    setState(() {
      yAxis -= 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: GestureDetector(
              onTap: _jump,
              child: AnimatedContainer(
                alignment: Alignment(0, yAxis),
                duration: Duration(milliseconds: 0),
                color: Colors.blue,
                child: TheBird(),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
