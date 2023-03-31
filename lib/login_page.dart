import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Form(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/loginform.png"),
                  SizedBox(height: 50),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
// class loginpage extends StatelessWidget {
//   const loginpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Splash Screen"),
//       ),
//       body: Center(child: Text("Login Page")),
//     );
//   }
// }
