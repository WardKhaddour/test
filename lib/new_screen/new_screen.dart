import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  @override
  NewScreenState createState() => NewScreenState();
}

class NewScreenState extends State<NewScreen> {
  String text1 = 'Ward';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFwsxRIOjunAQO_-MVZx6PfnQ4_qQ_q1QEaA&usqp=CAU'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                  onChanged: (s) {
                    text1 = s;

                    print(text1);
                    print(s);
                  },
                ),
              ),
              TextButton(
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  setState(() {});
                },
              ),
              Text(
                text1,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontFamily: 'Pacifico',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
