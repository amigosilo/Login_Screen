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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(
                'assets/images/bg.png',
                fit: BoxFit.fill,
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox( // Space for formatting
                      height: 300 ,
                    ),
                    const Text(
                      'Sign-up',
                    ),
                    IconButton( // Button for adding profile picture (function not implemented)
                      onPressed: (){}, // Placeholder function
                      icon: Image.asset('assets/images/cam.png'),
                    ),
                    const Text(
                      'Name',
                    ),
                    const TextField( // Input field for name
                      decoration: InputDecoration(
                        hintText: 'Your Name',
                      ),
                    ),
                    const Text(
                      'Email',
                    ),
                    const TextField( // Input field for email
                      decoration: InputDecoration(
                        hintText: 'Your Email',
                      ),
                    ),
                    const Text(
                      'Contact No.',
                    ),
                    const TextField( // Input field for contact number
                      decoration: InputDecoration(
                        hintText: 'Your Contact Number',
                      ),
                    ),
                    const Text(
                      'Password',
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 350,
                          child: TextField( // Input field for password
                            decoration: InputDecoration(
                              hintText: 'Password',
                            ),
                            obscureText: true,
                          ),
                        ),
                        Icon(
                          Icons.remove_red_eye,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                    OutlinedButton( // Button to sign-up (function not implemented)
                      onPressed: (){}, // Placeholder function
                      child: const Text(
                        'Sign-up',
                      ),
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
                      ),
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
