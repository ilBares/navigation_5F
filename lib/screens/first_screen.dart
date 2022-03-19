import 'package:flutter/material.dart';
import 'package:navigation_5f/components/custom_card.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List names = [
      'Marco',
      'Luca',
      'Piero'
    ];
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return _buildItem(context, names[index]);
          }
        ),
      ),
    );
  }

  Widget _buildItem(BuildContext context, String name) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/second'),
      child: CustomCard(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Text(
          name,
          style: const TextStyle(
            fontSize: 25
          ),
        ),
      ),
    );
  }

}
