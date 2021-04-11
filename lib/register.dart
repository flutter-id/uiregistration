import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(255, 173, 38, 1),
              Color.fromRGBO(251, 97, 0, 1)
            ])),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Sos',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    TextSpan(
                        text: 'Med',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ]),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                      color: Colors.white,
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Color.fromRGBO(251, 97, 0, 1), fontSize: 15),
                      ),
                      onPressed: () {},
                      padding: EdgeInsets.all(15)),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    child: Text(
                      'Register Now',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        side: BorderSide(width: 2, color: Colors.white)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Quick Register with Touch ID',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Image.asset(
                    'assets/images/touchid.png',
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Touch ID',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
