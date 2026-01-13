import 'package:flutter/material.dart';

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFd4422b),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                //columna invisible preguntar a miguel
                //(no le tenía fe)
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/path_logo.png',
                    width: 200,
                    height: 100,
                  ),
                  const Text(
                    'Beautiful, Private Sharing',
                    style: TextStyle(
                      color: Color.fromARGB(134, 255, 255, 255),
                      fontSize: 19,
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xFFd4422b),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      minimumSize: const Size(290, 50),
                      textStyle: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: const Text('Sign Up'),
                  ),
                  const SizedBox(height: 15), //espaciado basicamnete
                  Text(
                    'Already have a Path account?',
                    style: TextStyle(
                      color: Color.fromARGB(134, 255, 255, 255),
                      fontSize: 17,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFd4422b),
                      foregroundColor: const Color.fromARGB(134, 255, 255, 255),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: const BorderSide(
                          color: Color.fromARGB(134, 255, 255, 255),
                          width: 1,
                        ),
                      ),
                      minimumSize: const Size(290, 50),
                      textStyle: const TextStyle(fontSize: 26),
                    ),
                    child: const Text('Log In'),
                  ),
                  const SizedBox(height: 20),
                  Text.rich(
                    TextSpan(
                      text: 'By using Path, you agree to Path\'s\n',
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                      children: [
                        TextSpan(
                          text: 'Terms of Use',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
