import 'package:exercise_satu/register_page.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formfield = GlobalKey<FormState>();
  final usrnameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

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
            key: _formfield,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Image.asset(
                    "assets/images/logoregister.png",
                  ),
                  Image.asset("assets/images/registertext.png"),
                  SizedBox(height: 50),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: usrnameController,
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter your username",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter your email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email cannot be empty";
                      }
                      bool emailValid =
                          RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value);
                      if (!emailValid) {
                        return "Enter a valid email";
                      }
                    },
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: passController,
                    obscureText: passToggle,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter your Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: Icon(passToggle
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      } else if (passController.text.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                    },
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: passController,
                    obscureText: passToggle,
                    decoration: InputDecoration(
                      labelText: "Re-enter Password",
                      hintText: "Re-enter your Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: Icon(passToggle
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      } else if (passController.text.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                    },
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      //validation
                      if (_formfield.currentState!.validate()) {
                        print("Success!");
                        emailController.clear();
                        passController.clear();
                      }
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 216, 0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
