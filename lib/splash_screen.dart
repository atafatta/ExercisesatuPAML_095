import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //child: Image.asset('assets/images/cobasatu.png', fit: BoxFit.cover),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/cobasatu.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                // height: 200.0,
                // width: 200.0,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage('assets/images/logo.png'),
                //   ),
                // ),
                ),
            SizedBox(height: 30.0),
            Container(
              height: 50.0,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed function here
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
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
