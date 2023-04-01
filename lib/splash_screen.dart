import 'package:exercise_satu/login_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgblue.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(),
            SizedBox(height: 400.0),
            Container(
              height: 50.0,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 50.0),
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed function here
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginpage()));
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 14, 61, 163),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
