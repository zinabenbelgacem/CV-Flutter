import 'package:flutter/material.dart';
import 'ProfilPage.dart';
import 'home.page.dart';

class AuthentificationPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Page Authentification'),
        ),
        backgroundColor: Colors.pink, // Couleur de fond de la barre d'applications en rose (pink)
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Ajouter une image avant les champs de saisie
              Center(
                child: Image.asset(
                  'images/auth.jpg', // Assurez-vous de remplacer 'votre_image.png' par le chemin de votre image
                  height: 200,
                  width: 300, // Ajustez la largeur selon vos besoins
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Nom d\'utilisateur',
                  labelStyle: TextStyle(color: Colors.black), // Couleur noire pour le label
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black), // Couleur noire pour la bordure lorsqu'elle est sélectionnée
                  ),
                ),
                cursorColor: Colors.black, // Couleur du curseur (texte) en noir
              ),
              SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  labelStyle: TextStyle(color: Colors.black), // Couleur noire pour le label
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black), // Couleur noire pour la bordure lorsqu'elle est sélectionnée
                  ),
                ),
                cursorColor: Colors.black, // Couleur du curseur (texte) en noir
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  _handleAuthentication(context);
                },
                child: Text(
                  'Connexion',
                  style: TextStyle(color: Colors.white), // Couleur blanche pour le texte du bouton
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink, // Couleur de fond du bouton en rose (pink)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleAuthentication(BuildContext context) {
    // Récupérer les valeurs entrées par l'utilisateur
    String enteredUsername = _usernameController.text.trim();
    String enteredPassword = _passwordController.text.trim();

    // Votre logique d'authentification...
    bool authenticationSuccessful = (enteredUsername == 'zina' && enteredPassword == '1234');

    if (authenticationSuccessful) {
      // Naviguer vers la page Profil après une authentification réussie
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ProfilPage(nom: 'Ben Belgacem', prenom: 'Zina'),
        ),
      );

      // Afficher la page Home après 2 secondes
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      });
    } else {
      // Afficher un message d'échec d'authentification
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Échec de l\'authentification. Veuillez réessayer.'),
        ),
      );
    }
  }
}
