import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Log',
                      style: TextStyle(
                          color: Color.fromRGBO(251, 97, 0, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  TextSpan(
                      text: 'In',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Email ID',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.3),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.0, style: BorderStyle.none),
                  ),
                  hintText: 'email@domain.tld',
                  // prefixIcon: Icon(Icons.mail_outline),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Password',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.3),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.0, style: BorderStyle.none),
                  ),
                  hintText: 'Password',
                  // prefixIcon: Icon(Icons.lock),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
