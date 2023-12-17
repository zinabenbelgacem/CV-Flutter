import 'package:flutter/material.dart';

class CompethencesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compétences'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildSection(
              'Compétences',
              [
                SizedBox(height: 16),
                Text(
                  '- Expérience dans plusieurs technologies, notamment Flutter, HTML, CSS, jQuery, JavaScript, MySQL, Node.js (avec Express), MATLAB, Django, React, Next.js, Java, Java Enterprise Edition, et les systèmes de gestion de base de données (SGBD).',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
                ),
                SizedBox(height: 20),
                Text(
                  '- J\'ai travaillé sur deux projets liés au commerce électronique. Dans le premier projet, développement du frontend en utilisant React et Next.js, et pour le backend, utilisation de MongoDB Compass pour la gestion de la base de données.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
                ),
                SizedBox(height: 8),
                Text(
                  '- Dans le deuxième projet, utilisation de Django (Python) pour le développement, acquérant une expérience significative dans le développement d\'applications web et mobile, ainsi que dans la gestion des données.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
                ),
              ],
              Colors.lightBlueAccent,
            ),
            Divider(
              height: 30,
              thickness: 2,
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSection(String title, List<Widget> content, Color color) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: content,
          ),
        ),
        
      ],
    );
  }
}
