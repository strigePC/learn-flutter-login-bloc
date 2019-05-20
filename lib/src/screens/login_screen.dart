import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

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
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          decoration: InputDecoration(
            errorText: snapshot.error,
            hintText: 'mail@example.com',
            labelText: 'Email Address'
          ),
          keyboardType: TextInputType.emailAddress,
          onChanged: bloc.changeEmail,
        );
      },
    );
  }

  Widget passwordField() {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          decoration: InputDecoration(
            errorText: snapshot.error,
            hintText: 'Password',
            labelText: 'Password',
          ),
          obscureText: true,
          onChanged: bloc.changePassword,
        );
      },
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
