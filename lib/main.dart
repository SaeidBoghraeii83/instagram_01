import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash_Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/pattern1.png'),
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 40),
              child: Center(child: Image.asset('images/logo_splash.png')),
            ),

            Positioned(
              bottom: 32,
              child: Column(
                children: [
                  Text('From', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 10),
                  Text(
                    'Design Code Saeid Boghraeii',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 13,
                      fontFamily: 'GB',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
