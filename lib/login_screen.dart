import 'package:flutter/material.dart';
import 'package:instagram_01/switch_acount_screen.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 31, 46, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color.fromRGBO(28, 31, 46, 1),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 200),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign in to',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'GB',
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Moodinger',
                            style: TextStyle(
                              fontFamily: 'GB',
                              color: Colors.pinkAccent,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 70),
                    Column(
                      children: [
                        SizedBox(
                          width: 350,
                          child: TextField(
                            // controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.pinkAccent),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.pinkAccent,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.pinkAccent,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.pinkAccent,
                          ),
                        ),
                        SizedBox(height: 30),
                        SizedBox(
                          width: 350,
                          child: TextField(
                            //   controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.grey[300]),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 80),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'GB',
                        ),
                      ),
                    ),
                    SizedBox(height: 80),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dont have account ?  ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'GB',
                          ),
                        ),
                        Text(
                          'Sing Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'GB',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
