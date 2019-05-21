import 'dart:async';

import 'package:rxdart/rxdart.dart';

import 'validators.dart';

class Bloc with Validators {
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

//  Add data to stream
  Function(String) get changeEmail => _email.sink.add;

  Function(String) get changePassword => _password.sink.add;

//  Retrieve data from stream
  Stream<String> get email => _email.stream.transform(validateEmail);

  Stream<String> get password => _password.stream.transform(validatePassword);

  Stream<bool> get submitValid =>
      Observable.combineLatest2(email, password, (e, p) {
        return true;
      });

  submit() {
    final validEmail = _email.value;
    final validPassword = _password.value;

    print('Email is $validEmail');
    print('Password is $validPassword');
  }

  dispose() {
    _email.close();
    _password.close();
  }
}
