import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import '../Menu/drawer.widget.dart';
import 'ThemeProvider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(

        title: Text('Curriculum Vitae'),
        backgroundColor: Colors.indigoAccent,
        actions: [
          IconButton(
            icon: Icon(
              Icons.brightness_4,
              color: Colors.white,
            ),
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),

        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Profil
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('images/zina.jpg'),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Étudiante en 3ème année à l\'ISET Sfax en développement web',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            SizedBox(height: 16),

            // Informations Personnelles
            ListTile(
              title: Text(
                'Informations Personnelles : '
                ,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            buildInfoRow('Nom', 'Ben Belgacem'),
            buildInfoRow('Prénom', 'Zina'),
            buildInfoRow('Date de naissance', '15/11/2001'),
            buildInfoRow('Lieu de naissance', 'Sfax'),
            // Supprimer la ligne ci-dessous si elle est vide
            // buildInfoRow('Adresse', 'Sfax'),
            buildInfoRow('Téléphone', '23878960'),
            buildInfoRow('Email', 'benbelgassemzina@gmail.com'),

            // Ligne de séparation
            Divider(
              height: 30,
              thickness: 2,
              color: Colors.blueAccent,
            ),
            // Adresse Professionnelle


            // Études
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
                  ListTile(
                    title: Text('Baccalauréat en Sciences'),
                    subtitle: Text('Année d\'obtention: 2021'),
                  ),
                  ListTile(
                    title: Text('Licence en Développement Web'),
                    subtitle: Text('Année d\'obtention :2024'),
                  ),
                  // Ajouter d'autres études au besoin
                ],
              ),
            ),

            // Ligne de séparation
            Divider(
              height: 30,
              thickness: 2,
              color: Colors.blue, // Utiliser la même couleur que celle choisie ci-dessus
            ),


            // Expériences
            buildSection(
              'Expériences',
              [
                buildExperience('Stage d\'initiation - Poste Tunisienne', 'un mois'),
                buildExperience('Stage de Perfectionnement - Business Software', 'un mois'),
              ],
              Colors.lightBlue,
            ),

            // Ligne de séparation
            Divider(
              height: 30,
              thickness: 2,
              color: Colors.lightBlue,
            ),

            // Compétences
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
              color: Colors.lightBlueAccent, // Utiliser la même couleur que celle choisie ci-dessus
            ),

            // Certificats
            buildSection(
              'Certificats',
              [
                buildCertificate('Certificat 1 - BIG DATA', 'Date d\'obtention'),
                buildCertificate('Certificat 2 - Power BI & ARTIFCIAL INTELLIGENCE', 'Date d\'obtention'),
                buildCertificate('Certificat 3 - Intelligence Artificielle', 'Date d\'obtention'),
                buildCertificate('Certificat 4 - Azure Fundamentals & Azure DEVOPS & AZURE WEBAPPS', 'Date d\'obtention'),
                buildCertificate('Certificat 5 - Automarketing', 'Date d\'obtention'),
                buildCertificate('Certificat 6 - la planification stratégique', 'Date d\'obtention'),
                // Ajoutez d'autres certificats au besoin
              ],
              Colors.cyan, // Vous pouvez choisir une couleur différente si vous le souhaitez
            ),

            // Ligne de séparation après Certificats
            Divider(
              height: 30,
              thickness: 2,
              color: Colors.cyan,
            ),

            // Portfolio
            // ...

            // Portfolio
            buildSection(
              'Portfolio',
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
                // Ajoutez d'autres projets de portfolio au besoin
              ],
              Colors.green, // Vous pouvez choisir une couleur différente si vous le souhaitez
            ),

            // Ligne de séparation après Portfolio
            Divider(
              height: 30,
              thickness: 2,
              color: Colors.green,
            ),

            // ...

          ],
        ),
      ),
    );
  }

  Widget buildMap(BuildContext context) {
    return Container(
      height: 200, // Ajustez la hauteur selon vos besoins
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(48.8566, 2.3522), // Remplacez par vos propres coordonnées
          zoom: 15.0,
        ),
        markers: <Marker>[
          Marker(
            markerId: MarkerId('MonAdresseProfessionnelle'),
            position: LatLng(48.8566, 2.3522), // Remplacez par vos propres coordonnées
            infoWindow: InfoWindow(
              title: 'Mon Adresse Professionnelle',
              snippet: 'Description ou informations supplémentaires ici',
            ),
          ),
        ].toSet(),
      ),
    );
  }

  Widget buildInfoRow(String label, String value) {
    return Row(
      children: [
        Text(
          '$label :',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 8),
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget buildExperience(String title, String period) {
    return ListTile(
      title: Text(title),
      subtitle: Text(period),
    );
  }

  Widget buildCertificate(String name, String date) {
    return ListTile(
      title: Text(name),
      subtitle: Text(date),
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
          ListTile(
            title: Text(name),
            subtitle: Text(description),
            onTap: () {
              // Ouvrir le lien vers le projet lorsque la carte est cliquée
              // Assurez-vous d'ajouter la navigation appropriée selon votre besoin
              // Vous pouvez utiliser 'launch' ou 'Navigator.push' par exemple.
            },
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
