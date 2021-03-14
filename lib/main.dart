import 'package:flutter/material.dart';
import 'hi_screen/hi_widget.dart';

void main() {
  return runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFwsxRIOjunAQO_-MVZx6PfnQ4_qQ_q1QEaA&usqp=CAU'),
              fit: BoxFit.cover,
            ),
          ),
          child: Hi(),
        ),
      ),
    );
  }
}
