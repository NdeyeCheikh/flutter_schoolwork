import 'package:flutter/material.dart';
import 'package:calculatrice/components/calculator.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 202, 115, 144),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 202, 115, 144),
        title: const Text('Ndeye'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 150.0,
              backgroundImage: AssetImage('images/amina.jpg'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Calculatrice(title: 'ndeye',)),
                );
              },
              child: const Text('Calculatrice'),
            ),
          ],
        ),
      ),
    );
  }
}
