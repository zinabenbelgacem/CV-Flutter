import 'dart:async';
import 'package:flutter/material.dart';
import 'home.page.dart';

class ProfilPage extends StatefulWidget {
  final String nom;
  final String prenom;

  // Constructeur pour recevoir le nom et le prénom
  const ProfilPage({Key? key, required this.nom, required this.prenom}) : super(key: key);

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  void initState() {
    super.initState();

    // Attendre 2 secondes avant de naviguer vers la page d'accueil
    Timer(Duration(seconds: 2), () {
      // Utiliser le context du Scaffold pour effectuer la navigation
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/PP.jpg'), // Remplacez par le chemin de votre image de fond
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' ${widget.nom}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              Text(
                ' ${widget.prenom}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
