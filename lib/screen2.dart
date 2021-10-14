import 'package:flutter/material.dart';
import 'package:login_screen/screen1.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox( // Space for formatting
                      height: 300 ,
                    ),
                    const Text(
                      'Sign-up',
                      style: TextStyle(
                          fontSize:40.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Times New Roman'
                      ),
                    ),
                    Container(
                        width: 20,
                        height:20
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton( // Button for adding profile picture (function not implemented)
                          onPressed: (){}, // Placeholder function
                          icon: Image.asset('assets/images/cam.png'),
                        ),
                      ],
                    ),
                    Container(
                        width: 20,
                        height:20
                    ),
                    const Text(
                      'Name',
                        style: TextStyle(
                          fontSize:20.0,
                          fontWeight: FontWeight.bold,
                        )
                    ),

                    const TextField( // Input field for name
                      decoration: InputDecoration(
                        hintText: 'Your Name',
                      ),
                    ),
                    const Text(
                      'Email',
                        style: TextStyle(
                          fontSize:20.0,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                    const TextField( // Input field for email
                      decoration: InputDecoration(
                        hintText: 'Your Email',
                      ),
                    ),
                    const Text(
                      'Contact No.',
                        style: TextStyle(
                          fontSize:20.0,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                    const TextField( // Input field for contact number
                      decoration: InputDecoration(
                        hintText: 'Your Contact Number',
                      ),
                    ),
                    const Text(
                      'Password',
                        style: TextStyle(
                          fontSize:20.0,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                    const TextField( // Input field for password
                      decoration: InputDecoration(
                        hintText: 'Password',
                      ),
                      obscureText: true,
                    ),
                    Container(
                        width: 20,
                        height:20
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50.0,
                          width: 300,
                          child: RaisedButton( // Button to sign-up (function not implemented)
                            onPressed: (){}, // Placehold

                            shape: RoundedRectangleBorder(

                                borderRadius: BorderRadius.circular(80.0)
                            ),
// er function
                            child: const Text(
                              'Sign-up',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white
                              )

                            ),
                              color: Colors.black


                          ),
                        ),
                      ],
                    ),
                    TextButton( // Button to cancel sign-up and return to Screen 1
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => const MyHomePage(title: 'Screen 1'),
                          ),
                        );
                      },
                      child: const Text(
                        'Back to Login',
                          style: TextStyle(
                            color: Colors.black

                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
