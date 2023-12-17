import 'package:flutter/material.dart';


class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Langues Utilisées'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildLanguageRow('Arabe', 40), // Remplacez 40 par le pourcentage réel
          buildLanguageRow('Français', 30), // Remplacez 30 par le pourcentage réel
          buildLanguageRow('Anglais', 30), // Remplacez 30 par le pourcentage réel
        ],
      ),
    );
  }

  Widget buildLanguageRow(String language, double percentage) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              language,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            flex: 2,
            child: LinearProgressIndicator(
              value: percentage / 100, // La valeur doit être comprise entre 0 et 1
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ),
          SizedBox(width: 10.0),
          Text(
            '$percentage%',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
