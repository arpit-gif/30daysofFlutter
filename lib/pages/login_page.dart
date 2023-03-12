import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LogInPage extends StatefulWidget {
  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/undraw_secure_login_pdn4.png",
                fit: BoxFit.contain,
                width: 1000,
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20.0,
              ),
              // ignore: prefer_const_constructors
              Text(
                "Welcome $name",
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),

                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        
                        await Future.delayed(Duration(seconds: 1),
                        );
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton? 100: 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton?
                        Icon(Icons.done,
                        color: Colors.white,)
                        : Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(changeButton? 100: 8)),
                      ),
                    )
                    //ElevatedButton(
                    //child: Text("Login"),
                    //style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                    //onPressed: () {
                    // Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //},
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
