import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "secret",
            authDomain: "farm-mate-z424pk.firebaseapp.com",
            projectId: "farm-mate-z424pk",
            storageBucket: "farm-mate-z424pk.firebasestorage.app",
            messagingSenderId: "123570224099",
            appId: "1:123570224099:web:354a13d84bb5f54d3bfed6"));
  } else {
    await Firebase.initializeApp();
  }
}
