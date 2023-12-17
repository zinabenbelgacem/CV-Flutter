import 'package:flutter/material.dart';
class GlobalParams {
  static List<Map<String, dynamic>>menus = [
    {
      "title": "Accueil",
      "icon": Icon(Icons.home, color: Colors.black54,),
      "route": "/home"
    },
    {
      "title": "Porfolio",
      "icon": Icon(Icons.abc_rounded, color: Colors.black54,),
      "route": "/portfolio"
    },
    {
      "title": "Etudes",
      "icon": Icon(Icons.abc_rounded, color: Colors.black54,),
      "route": "/etudes"
    },
    {"title": "Expériences", "icon": Icon(Icons.location_city, color: Colors.black54,),
      "route": "/experience"
    },

    {"title": "Compéthences", "icon": Icon(Icons.abc_rounded, color: Colors.black54,),
      "route": "/compethences"},
    {
      "title": "Certificats",
      "icon": Icon(Icons.account_balance_outlined , color: Colors.black54,),
      "route": "/certificat"
    },
    {
      "title": "Application utulisées ",
      "icon": Icon(Icons.adb_outlined, color: Colors.black54,),
      "route": "/application"
    },
    {
      "title": " Adresse ",
      "icon": Icon(Icons.contact_page, color: Colors.black54,),
      "route": "/map"
    },
    {
      "title": "Language ",
      "icon": Icon(Icons.abc_sharp , color: Colors.black54,),
      "route": "/language"
    },

    {"title":"Déconnexion",
      "icon":Icon(Icons.logout, color:Colors.black54, ) ,
      "route":"/deconnexion"},

  ];
}