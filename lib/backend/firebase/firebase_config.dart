import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBkY_c9wEpzGEjfSsS0nXqnrf38RAP4YA4",
            authDomain: "freeproxy-39984.firebaseapp.com",
            projectId: "freeproxy-39984",
            storageBucket: "freeproxy-39984.firebasestorage.app",
            messagingSenderId: "423582732659",
            appId: "1:423582732659:web:bf7cf344b99378054db506",
            measurementId: "G-86S0KHGYLE"));
  } else {
    await Firebase.initializeApp();
  }
}
