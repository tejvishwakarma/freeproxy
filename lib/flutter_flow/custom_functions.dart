import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

DocumentReference? convertStringToRefCountry(String link) {
  // convert string to document reference
  if (link.isEmpty) {
    return null;
  }
  return FirebaseFirestore.instance.doc(link);
}

String getCountryFlag(String flag) {
  // get image path upon selecting dropdown list from collection
  switch (flag) {
    case 'United States':
      return 'assets/flags/usa.png';
    case 'Canada':
      return 'assets/flags/canada.png';
    case 'United Kingdom':
      return 'assets/flags/uk.png';
    case 'Belgium':
      return 'assets/flags/belgium.png';
    case 'Australia':
      return 'assets/flags/australia.png';
    case 'Bangladesh':
      return 'assets/flags/bangladesh.png';
    case 'Brazil':
      return 'assets/flags/brazil.png';
    case 'Germany':
      return 'assets/flags/germany.png';
    case 'Netherland':
      return 'assets/flags/netherland.png';
    case 'Norway':
      return 'assets/flags/norway.png';
    case 'Portugal':
      return 'assets/flags/portugal.png';
    case 'Spain':
      return 'assets/flags/spain.png';
    case 'Switzerland':
      return 'assets/flags/switzerland.png';
    case 'Turkey':
      return 'assets/flags/turkey.png';
    default:
      return 'assets/flags/default.png';
  }
}

String imagePathToString(String imagepath) {
  // convert image path to string
  return imagepath.toString();
}

String stringToImagePath(String string) {
  // convert string to image path
  // convert string to image path
  return string;
}
