import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String name;
  String user;
  String password;

  Future<Null> normalDialog(BuildContext context, String string) async {
    showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              title: Text(string),
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('ok'),
                )
              ],
            ));
  }

  Container buildtextfieldName() => Container(
      margin: EdgeInsets.only(top: 20),
      width: 250,
      child: TextField(
        onChanged: (value) => name = value.trim(),
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.science),
            labelText: 'DisplayName',
            border: OutlineInputBorder()),
      ));
  Container buildtextfieldUser() => Container(
      margin: EdgeInsets.only(top: 20),
      width: 250,
      child: TextField(
        onChanged: (value) => user = value.trim(),
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.contact_mail),
            labelText: 'Email',
            border: OutlineInputBorder()),
      ));
  Container buildtextfieldPassword() => Container(
      margin: EdgeInsets.only(top: 20),
      width: 250,
      child: TextField(
        onChanged: (value) => password = value.trim(),
        obscureText: true,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'Password',
            border: OutlineInputBorder()),
      ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        print('name=$name ,user=$user ,password=$password');
        if (name == null ||
            name.isEmpty ||
            user == null ||
            user.isEmpty ||
            password.isEmpty ||
            password == null) {
          normalDialog(context, 'Please enter your info.');
        } else {}
      }),
      appBar: AppBar(title: Text('Register')),
      body: Center(
        child: Column(children: [
          buildtextfieldName(),
          buildtextfieldUser(),
          buildtextfieldPassword(),
        ]),
      ),
    );
  }
}
