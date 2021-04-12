import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'login.dart';
import 'register.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // title: Text('Hello'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                  color: Colors.black,
                ),
              ],
            );
          },
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Color.fromRGBO(251, 97, 0, 1)
                  // image: DecorationImage(
                  //     image: NetworkImage(
                  //         "https://www.daysoftheyear.com/wp-content/uploads/look-up-at-the-sky-day-1.jpg")
                  //     fit: BoxFit.cover
                  //     )
                  ),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'Log',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        TextSpan(
                            text: ' In',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ]),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email ID',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    )),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.3),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 0.0, style: BorderStyle.none),
                    ),
                    hintText: 'email@domain.tld',
                    // prefixIcon: Icon(Icons.mail_outline),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    )),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.3),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 0.0, style: BorderStyle.none),
                    ),
                    hintText: 'Password',
                    // prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                      color: Color.fromRGBO(251, 97, 0, 1),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      padding: EdgeInsets.all(15)),
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('Forget Password?'),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                    ),
                    Text('or'),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: RaisedButton.icon(
                    padding: EdgeInsets.all(15),
                    label: Text(
                      'Login with Facebook',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    textColor: Colors.white,
                    color: Color.fromRGBO(24, 80, 171, 1),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.center,
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Don\'t have an Account?',
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              MaterialPageRoute(
                                  builder: (context) => Register());
                            },
                          text: ' Register',
                          style:
                              TextStyle(color: Color.fromRGBO(251, 97, 0, 1))),
                    ]))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 30);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return null;
  }
}
