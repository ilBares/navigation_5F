import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Torna alla homePage',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
    );
  }
}
