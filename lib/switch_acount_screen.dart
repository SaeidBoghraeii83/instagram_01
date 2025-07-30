import 'dart:ui';

import 'package:flutter/material.dart';

class Swith_Screen extends StatelessWidget {
  const Swith_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/switch_account_background.png'),
            repeat: ImageRepeat.noRepeat,
          ),
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Positioned(
              top: 360,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(15),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 40, sigmaX: 40),
                  child: Container(
                    // color: Colors.transparent,
                    width: 340,
                    height: 352,

                    color: Colors.blueGrey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('images/profile.png'),
                        Text(
                          'Saeid Boghraeii',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'GB',
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'saeed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'GB',
                            ),
                          ),
                        ),
                        Text(
                          'switch account',
                          style: TextStyle(
                            fontFamily: 'GB',
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              child: Row(
                children: [
                  Text(
                    'Dont have account ?  ',
                    style: TextStyle(color: Colors.grey, fontFamily: 'GB'),
                  ),
                  Text(
                    'Sing Up',
                    style: TextStyle(color: Colors.white, fontFamily: 'GB'),
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
