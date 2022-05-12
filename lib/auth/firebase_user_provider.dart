import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BiolivreWebFirebaseUser {
  BiolivreWebFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

BiolivreWebFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BiolivreWebFirebaseUser> biolivreWebFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<BiolivreWebFirebaseUser>(
        (user) => currentUser = BiolivreWebFirebaseUser(user));
