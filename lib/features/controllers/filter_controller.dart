import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class FilterController extends GetxController {
  final selectedDate = DateTime.now().obs;
  final focusedDate = DateTime.now().obs;
  final selectedTime = TimeOfDay.now().obs;

  final isAM = true.obs;

  void updateDates(DateTime selected, DateTime? focused) {
    selectedDate.value = selected;
    focusedDate.value = focused!;
  }

  String formatDate(DateTime date) {
    return DateFormat(
      'EEEE, d MMMM',
    ).format(date);
  }
}
