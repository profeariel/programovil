import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAbbJOiSLFcXembS3qyNoP8_GNxx7RYOiI",
            authDomain: "dbpulperia.firebaseapp.com",
            projectId: "dbpulperia",
            storageBucket: "dbpulperia.appspot.com",
            messagingSenderId: "124888658405",
            appId: "1:124888658405:web:c95e8d0beb99fbf6f97f0c",
            measurementId: "G-092B3QW6FM"));
  } else {
    await Firebase.initializeApp();
  }
}
