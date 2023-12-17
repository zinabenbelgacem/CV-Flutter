import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon Portfolio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Autres sections de votre portfolio...

            // Section Projets Réalisés
            buildProjectsSection(),
          ],
        ),
      ),
    );
  }

  // Fonction pour construire la section Projets Réalisés
  Widget buildProjectsSection() {
    return buildSection(
      'Projets Réalisés',
      [
        buildProject(
          'Projet E-commerce (React, Next.js, MongoDB)',
          'Développement du frontend en utilisant React et Next.js, et pour le backend, utilisation de MongoDB Compass pour la gestion de la base de données.',
          'images/projet1.jpg',
        ),
        buildProject(
          'Projet E-commerce (Django)',
          'Utilisation de Django (Python) pour le développement d\'une application e-commerce.',
          'images/projet2.png',
        ),
        // Ajoutez d'autres projets selon vos besoins
      ],
      Colors.blueAccent, // Couleur de la section
    );
  }

  Widget buildProject(String name, String description, String imagePath) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 120, // Ajustez la hauteur selon vos besoins
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imagePath),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(name),
              subtitle: Text(description),
              onTap: () {
                // Ouvrir le lien vers le projet lorsque la carte est cliquée
                // Assurez-vous d'ajouter la navigation appropriée selon votre besoin
                // Vous pouvez utiliser 'launch' ou 'Navigator.push' par exemple.
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSection(String title, List<Widget> content, Color color) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
      // Contenu de la section
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: content,
      ),
    );
  }
}
