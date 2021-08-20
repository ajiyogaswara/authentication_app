import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Login to continue",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/people2.png',
                      )),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 6,
                          spreadRadius: 5,
                        )
                      ]),
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: "Email or username",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: BorderSide.none),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 6,
                            spreadRadius: 5,
                          )
                        ],
                      ),
                      child: TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                            hintText: "Password",
                            suffixIcon: Icon(
                              Icons.visibility,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide.none),
                            fillColor: Colors.white,
                            filled: true),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        child: Text("Forgot password: ? ")),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.pink,
                          blurRadius: 3,
                          spreadRadius: 3,
                        ),
                      ]),
                      child: MaterialButton(
                        onPressed: () {},
                        height: 50,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        color: Colors.pink,
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account: ? "),
                              Text(
                                "Sign up",
                                style: TextStyle(
                                    color: Colors.pink,
                                    fontWeight: FontWeight.bold),
                              )
                            ]))
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
