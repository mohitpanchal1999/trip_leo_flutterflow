import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

LatLng? newCustomFunction(
  LatLng? currentLatLng,
  LatLng? pickedLatLng,
) {
  // return latlng if pickedLatLng is empty or null retun currentLatLng and if   pickedLatLng is not empty and null return pickedLatLng
  if (pickedLatLng == null ||
      pickedLatLng.latitude == 0.0 && pickedLatLng.longitude == 0.0) {
    return currentLatLng;
  } else {
    return pickedLatLng;
  }
}

bool? hideShowLocationBottomSheet(
  LatLng? pickedLatLng,
  LatLng? currentLatLng,
) {
  if (pickedLatLng == null ||
      pickedLatLng.latitude == 0.0 && pickedLatLng.longitude == 0.0) {
    return false;
  } else {
    return true;
  }
}
