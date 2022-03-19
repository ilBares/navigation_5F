import 'package:flutter/material.dart';
import 'package:navigation_5f/components/custom_card.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Lista di nomi che useremo per la ListView
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
    // il "GestureDetector" è un Widget che serve a "rilavare" tap sugli
    // elementi della nostra lista
    return GestureDetector(
      // quando viene cliccato l'elemento della lista invoca il Navigator
      // '/second' indica il nome del Widget da aprire in base alle routes
      // presenti del file "main.dart"
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
