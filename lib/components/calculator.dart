import 'package:flutter/material.dart';
import 'package:calculatrice/components/image.dart';
class Calculatrice extends StatefulWidget {
  const Calculatrice({Key? key, required String title}) : super(key: key);

  @override
  State<Calculatrice> createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {

  _updatenumber(String nb) {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 94, 40, 58),
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Couleur de la barre d'applications
        title: const Text("Calculatrice"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Column(
                  children: [
                    customButton('1'),
                    customButton('4'),
                    customButton('7'),
                  ],
                ),
                
                Column(
                  children: [
                    customButton('2'),
                    customButton('5'),
                    customButton('8'),
                  ],
                ),
                
                Column(
                  children: [
                    customButton('3'),
                    customButton('6'),
                    customButton('9'),
                  ],
                ),
              ],
            ),
            // Bouton '0'
            
             ElevatedButton(
  onPressed: () {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => ImagePage()),
    );
  },
  // ignore: sort_child_properties_last
  child: const Text('Image'),
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(16),
    backgroundColor: Colors.white,
  ),
),


            
          ],
          
        ),
      ),
    );
  }

  // Méthode pour créer des boutons personnalisés
  Widget customButton(String label) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      child: TextButton(
      onPressed: () => _updatenumber(label),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(25),
        backgroundColor: Colors.white, 
        // Couleur des boutons
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),
      ),
    ),
    );
  }
}

