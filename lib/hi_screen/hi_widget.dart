import 'package:flutter/material.dart';
import 'package:hello_wrold/new_screen/new_screen.dart';

void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => NewScreen()));
}

class Hi extends StatefulWidget {
  @override
  HiState createState() => HiState();
}

class HiState extends State<Hi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hi',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          TextButton(
            child: Icon(
              Icons.forward,
              size: 100.0,
              color: Colors.black,
            ),
            onPressed: () {
              buildNavigateToNextScreen(context);
            },
          ),
        ],
      ),
    );
  }

  void buildNavigateToNextScreen(BuildContext context) =>
      _navigateToNextScreen(context);
}
