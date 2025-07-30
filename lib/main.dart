import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:instagram_01/switch_acount_screen.dart';
import 'package:instagram_01/login_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login_Screen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                15,
              ), // Adjust the value for desired roundness
            ),
            minimumSize: Size(129, 46),
            backgroundColor: Color.fromRGBO(243, 83, 131, 1),
          ),
        ),
      ),
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
