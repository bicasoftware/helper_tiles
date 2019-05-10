import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

String formatDate(DateTime date, BuildContext context) {
  initializeDateFormatting(
    Localizations.localeOf(context).countryCode,
    null,
  );

  return DateFormat("dd/MM/yyyy").format(date);
}

String formatTimeOfDay(TimeOfDay timeOf) {
  return "${timeOf.hour.toString().padLeft(2, '0')}:${timeOf.minute.toString().padLeft(2, '0')}";
}
