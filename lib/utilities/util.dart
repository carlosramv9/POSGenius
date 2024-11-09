import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Future<List<PlatformFile>?> selectFiles({isMultiple = false, FileType type = FileType.any}) async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: isMultiple, type: type);

  return result?.files;
}

Map<String, Color> getColor = {"orangePrimary": const Color.fromARGB(255, 236, 150, 36)};

double roundDouble(double value, int places) {
  num mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

//parse string to currency
String parseCurrency(String value) {
  if (value.isEmpty) return '0.00';
  var number = double.parse(value);
  return number.toStringAsFixed(2);
}

double getWidthFromLayout(double width) {
  if (width >= 800) {
    return width * 0.4;
  } else if (width >= 600) {
    return width * 0.6;
  } else if (width >= 400) {
    return width;
  } else {
    return width * 0.1;
  }
}

double getPaddingFormDesktop(double width) {
  if (width >= 1800) {
    return 250;
  } else if (width >= 1500) {
    return 250;
  } else if (width >= 1000) {
    return 150;
  } else {
    return 10;
  }
}

// Format String to DateTime
String? formatDateTime(String date) {
  if (date.isEmpty) return null;
  var dateTime = DateTime.parse(date);
  return '${dateTime.day.toString().padLeft(2, '0')}/${dateTime.month.toString().padLeft(2, '0')}/${dateTime.year}';
}

// Format String to DateTime Hour
String? formatDateTimeHour(String date) {
  if (date.isEmpty) return null;
  var dateTime = DateTime.parse(date);
  return '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour}:${dateTime.minute}';
}

// Format String to DateTime Hour AM/PM
String? formatDateTimeHourAMPM(String date) {
  if (date.isEmpty) return null;
  var dateTime = DateTime.parse(date);
  return '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour > 12 ? dateTime.hour - 12 : dateTime.hour}:${dateTime.minute} ${dateTime.hour > 12 ? 'PM' : 'AM'}';
}

bool stringIsNullOrEmpty(String? value) {
  if (value == null) return true;
  if (value.isEmpty) return true;

  return false;
}

String formatCurrency(double value) {
  if (value.toString().isEmpty == true) return '0.00';
  var number = value;
  final formatter = NumberFormat("#,###,##0.00####", "en_US");
  return formatter.format(number);
}

// Convert String to DateTime with format dd/MM/yyyy
DateTime? convertStringToDateTime(String? date) {
  if (date == null) return null;
  if (date.isEmpty) return null;
  var dateTime = DateTime.parse(date);
  return DateTime(dateTime.year, dateTime.month, dateTime.day);
}

// Convert String to DateTime and return string with format MM/dd/yyyy
String convertStringToDateTimeString(String? date) {
  if (date == null) return '';
  if (date.isEmpty) return '';
  var dateTime = DateTime.parse(date);
  return '${dateTime.month.toString().padLeft(2, '0')}/${dateTime.day.toString().padLeft(2, '0')}/${dateTime.year}';
}

// Convert DateTime to String with format dd/MM/yyyy
String convertDateTimeToString(DateTime? date) {
  if (date == null) return '';
  return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
}

// Fix decimals to n decimals
double fixDecimals(double value, int decimals) {
  return double.parse(value.toStringAsFixed(decimals));
}

String buildQueryParameters(Map<String, dynamic> parameters) {
  String query = '';
  parameters.forEach((key, value) {
    if (value != null) query += '$key=$value&';
  });
  return query;
}

// get width for snackbar
double getSnackBarWidth(double width) {
  if (width > 1200) {
    return width * 0.3;
  } else if (width > 800) {
    return width * 0.4;
  } else {
    return width * 0.9;
  }
}

int getCrossAxisCountResponsive(double width) {
  if (width > 1600) {
    return 3;
  } else if (width > 1200) {
    return 2;
  } else {
    return 1;
  }
}
