import 'package:flutter/material.dart';

class EtudePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Études'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: Text(
                'Études',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue, // Choisir une couleur qui convient
                ),
              ),
              // Liste des études
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildEtudeRow('Baccalauréat en Sciences', 'Année d\'obtention: 2021'),
                  buildEtudeRow('Licence en Développement Web', 'Année d\'obtention: 2024'),
                  // Ajouter d'autres études au besoin
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildEtudeRow(String label, String value) {
    return ListTile(
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
