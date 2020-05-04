
import 'package:designsaeed/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_container/responsive_container.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'login.dart';
class SignUpClass extends StatefulWidget {
  @override
  _SignUpClassState createState() => _SignUpClassState();
}

class _SignUpClassState extends State<SignUpClass> {
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Stack(
              children: <Widget>[
                ResponsiveContainer(
                  heightPercent: 30.0,
                  widthPercent: 100.0,
                  child: Container(
                    child: Image.asset('assets/background.png',
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsetsResponsive.only(top:200.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text("SIGN UP",style: TextStyle(
                        color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Gotham',
                      fontSize: 20.0,
                      letterSpacing: 1.0
                    ),),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField( icons: FaIcon(FontAwesomeIcons.user,size: 18.0,),textName: "Name"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(icons: FaIcon(FontAwesomeIcons.user,size: 18.0,),textName: "Surname",),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(icons: FaIcon(FontAwesomeIcons.phone,size: 18.0,),textName: "Telephone"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(icons: FaIcon(FontAwesomeIcons.envelope,size: 18.0,),textName: "Email",),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(icons: FaIcon(FontAwesomeIcons.eyeSlash,size: 18.0,),textName: "Password",),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ResponsiveContainer(
                widthPercent: 100.0,
                heightPercent: 8.0,
                child: MaterialButton(

                  color:appColor,
                  child: Text('REGISTER',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                        letterSpacing: 1.0
                    ),),
                  elevation: 2,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  onPressed: (){

                  },
                ),
              ),
            ),
            Text('Already have an account?',
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
                child: Text('LOGIN',
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),),
                elevation: 2,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
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

  TextField({this.textName,
    this.icons,
    this.hintText});

  final String textName;
  final FaIcon icons;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
          hintText: '',
          labelText: textName,
          fillColor: Colors.white,
          border:  OutlineInputBorder(
            borderRadius:  BorderRadius.circular(8.0),
            borderSide:  BorderSide(
            ),
          ),
          suffixIcon: Padding(
              padding: EdgeInsets.only(top: 8.0,left: 8.0),
              child: icons)

        //fillColor: Colors.green
      ),
      keyboardType: TextInputType.emailAddress,

    );
  }
}

