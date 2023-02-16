import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PulperiaFirebaseUser {
  PulperiaFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PulperiaFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PulperiaFirebaseUser> pulperiaFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PulperiaFirebaseUser>(
      (user) {
        currentUser = PulperiaFirebaseUser(user);
        return currentUser!;
      },
    );
