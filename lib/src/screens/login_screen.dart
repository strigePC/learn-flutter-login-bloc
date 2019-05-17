import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          Container(margin: EdgeInsets.only(bottom: 15.0)),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'mail@example.com',
        labelText: 'Email Address',
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
      ),
      obscureText: true,
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text('Log In'),
      color: Colors.blue,
      onPressed: () {},
      textColor: Colors.white,
    );
  }
}
