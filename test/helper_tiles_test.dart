import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:helper_tiles/formaters.dart';

void main() {
  test('formatTime', () {
    final time = TimeOfDay(hour: 18, minute: 0);
    assert(formatTimeOfDay(time) == "18:00");
  });
}
