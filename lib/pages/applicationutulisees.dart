

import 'package:flutter/material.dart';

class ApplicationutuliseePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application Utulisées  '),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/and.jpg', height: 300, width: 300),
              SizedBox(height: 15.0),
              Image.asset('images/eclipse.png', height: 300, width: 300),
              SizedBox(height: 15.0),
              Image.asset('images/ij.jpg', height: 300, width: 300),
              SizedBox(height: 15.0),
              Image.asset('images/mongo.png', height: 300, width: 300),
              SizedBox(height: 15.0),
              Image.asset('images/post.jpg', height: 300, width: 300),
              SizedBox(height: 15.0),
              Image.asset('images/visual.png', height: 300, width: 300),
              SizedBox(height: 15.0),
              Image.asset('images/codeblocks.png', height: 300, width: 300),
            ],
          ),
        ),
      ),
    );
  }
}
