import 'package:designsaeed/constants.dart';
import 'package:designsaeed/resetpassword.dart';
import 'package:designsaeed/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_container/responsive_container.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'homepage/BottomNavBar.dart';
import 'homepage/HomePage.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ResponsiveContainer(
              widthPercent: 100.0,
              heightPercent: 30.0,
              child: Container(
                  child: Image.asset('assets/background.png',
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fill,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(icons: FaIcon(FontAwesomeIcons.envelope,size: 18.0,),TextName: "Email"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(icons: FaIcon(FontAwesomeIcons.eyeSlash,size: 18.0),TextName: "Password",),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ResponsiveContainer(
                heightPercent: 8.0,
                widthPercent: 100.0,
                child: RaisedButton(
                  color:appColor,
                  child: Text('LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  elevation: 2,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Bottomnav()),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                    ResetPasswordClass()
                    ));
                  },
                  child:  Text('Forgot password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'Gotham',
                    ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Dash(
                      direction: Axis.horizontal,
                      length: 100,
                      dashLength: 8,
                      dashColor: Colors.grey),
                  Text('Login with'),
                  Dash(
                      direction: Axis.horizontal,
                      length: 100,
                      dashLength: 8,
                      dashColor: Colors.grey),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ResponsiveContainer(
                heightPercent: 8.0,
                widthPercent: 100.0,
                child: RaisedButton(
                  elevation: 2,
                    shape:  RoundedRectangleBorder(
                        borderRadius:  BorderRadius.circular(30.0)),
                    onPressed: () {
                    },
                    child:  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                            Image.asset(
                            'assets/facebook.png',
                          ),
                          Padding(
                            padding:  EdgeInsetsResponsive.only(left: 250.0),
                            child: Text(
                              "Facebook",
                              style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                   color: Color(0xFF293C9A),
                    textColor: Color(0xFFFFFFFF),

                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ResponsiveContainer(
                heightPercent: 8.0,
                widthPercent: 100.0,
                child: RaisedButton(
                  elevation: 2,
                  shape:  RoundedRectangleBorder(
                      borderRadius:  BorderRadius.circular(30.0)),
                  onPressed: () {
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new Row(
                      children: <Widget>[
                        new Image.asset(
                          'assets/google.png',
                        ),
                         Padding(
                           padding:  EdgeInsetsResponsive.only(left: 250.0),
                           child: Text(
                            "Google",
                            style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                         )
                      ],
                    ),
                  ),
                  color: Color(0xFFFFFFFF),

                  textColor: Colors.black,

                ),
              ),
            ),

            Text('Dont have an account?',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Gotham',
              ),),
           ResponsiveContainer(
             widthPercent: 100,
             heightPercent: 9,
             child: MaterialButton(
              height: 45,
               minWidth: 360,
               color:appColor,
               child: Text('SIGNUP',
                 style: TextStyle(
                   fontFamily: 'Gotham',
              color: Colors.white,
          ),),
             elevation: 2,
             onPressed: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => SignUpClass()),
               );
             },
      ),
           ),
          ],

        ),
      ),
    );
  }
}

class TextField extends StatelessWidget {

  TextField({this.TextName,
             this.icons,
              this.hintText});

  final String TextName;
  final FaIcon icons;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
        hintText: '',
          labelText: TextName,
          fillColor: Colors.white,
          border:  OutlineInputBorder(
            borderRadius:  BorderRadius.circular(8.0),
            borderSide:  BorderSide(
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(top:8.0,left: 8.0),
            child: icons,
          )

        //fillColor: Colors.green
      ),
      keyboardType: TextInputType.emailAddress,

    );
  }
}

