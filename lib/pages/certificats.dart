import 'package:flutter/material.dart';

class CertificatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Certificat Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/1.png', height: 300, width: 300),
              SizedBox(height: 15.0),
              Image.asset('images/2.png', height: 300, width: 300),
              SizedBox(height: 15.0),
              Image.asset('images/3.png', height: 300, width: 300),
              SizedBox(height: 15.0),
              Image.asset('images/4.png', height: 300, width: 300),
              SizedBox(height: 15.0),
              Image.asset('images/5.png', height: 300, width: 300),
              SizedBox(height: 15.0),
              Image.asset('images/6.png', height: 300, width: 300),
            ],
          ),
        ),
      ),
    );
  }
}
