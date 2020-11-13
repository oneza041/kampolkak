import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maxsbc/register.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(center: Alignment(0,-0.5),
          radius:1.0, 
          colors: [Colors.white,Colors.grey],),),
        child: Center(
        child: Column( mainAxisSize: MainAxisSize.min,
        children: [
          buildlogo(),
          buildText(),
          buildtextfieldUser(),
          buildtextfieldPassword(),
          buildlogin(),
          buildTextButton(),
        ],
        )
      )),
    );
  }

  TextButton buildTextButton() {
    return TextButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Register())),
          child: Text('New Register'),
        );
  }

  Container buildlogin() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 250,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.cloud_upload),
        label: Text('login'),
      ),
    );
  }

  Text buildText() => Text(
        'this home is work!',
        style: GoogleFonts.oswald(
          fontSize: 22,
        ),
      );

  Container buildlogo() {
    return Container(
      width: 128,
      child: Image.asset('images/iconic.png'),
    );
  }

  Container buildtextfieldUser() => Container(
      margin: EdgeInsets.only(top: 20),
      width: 250,
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.contact_mail),
            labelText: 'User',
            border: OutlineInputBorder()),
      ));
  Container buildtextfieldPassword() => Container(
      margin: EdgeInsets.only(top: 20),
      width: 250,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'Password',
            border: OutlineInputBorder()),
      ));
}
