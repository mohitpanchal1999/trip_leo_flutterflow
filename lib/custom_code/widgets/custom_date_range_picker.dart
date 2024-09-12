// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';

// ignore_for_file: prefer_const_constructors

import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

class CustomDateRangePicker extends StatefulWidget {
  const CustomDateRangePicker({
    super.key,
    this.width,
    this.height,
    this.updatePageUi,
  });

  final double? width;
  final double? height;
  final Future Function()? updatePageUi;

  @override
  State<CustomDateRangePicker> createState() => _CustomDateRangePickerState();
}

class _CustomDateRangePickerState extends State<CustomDateRangePicker> {
  List<DateTime?> _dialogCalendarPickerValue = [];
  int difference = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildCalendarDialogButton();
  }

  String _getValueText(
    CalendarDatePicker2Type datePickerType,
    List<DateTime?> values,
  ) {
    final DateFormat formatter = DateFormat('MM-dd-yyyy');
    String formattedStartDate = formatter.format(values[0]!);
    String formattedEndDate = formatter.format(values[1]!);
    FFAppState().startDate = formattedStartDate;
    FFAppState().endDate = formattedEndDate;
    // widget.updatePageUi!();

    return '$formattedStartDate ${formattedEndDate == '' ? '' : 'to $formattedEndDate'}';
  }

  _buildCalendarDialogButton() {
    const dayTextStyle =
        TextStyle(color: Colors.black, fontWeight: FontWeight.w400);
    final config = CalendarDatePicker2WithActionButtonsConfig(
      calendarViewScrollPhysics: const ClampingScrollPhysics(),
      dayTextStyle: dayTextStyle,
      firstDate: DateTime.now(),
      lastDate: DateTime(
          DateTime.now().year, DateTime.now().month + 12, DateTime.now().day),
      calendarType: CalendarDatePicker2Type.range,
      selectedDayHighlightColor: Color(0xFFFF3131),
      closeDialogOnCancelTapped: true,
      firstDayOfWeek: 1,
      weekdayLabelTextStyle: const TextStyle(
        color: Color(0xFFFF3131),
        fontWeight: FontWeight.bold,
      ),
      disabledDayTextStyle: const TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w400,
      ),
      controlsTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
      centerAlignModePicker: true,
      customModePickerIcon: const SizedBox(),
      selectedDayTextStyle: dayTextStyle.copyWith(color: Colors.white),
    );
    return GestureDetector(
      onTap: () async {
        final values = await showCalendarDatePicker2Dialog(
          context: context,
          config: config,
          dialogSize: const Size(325, 370),
          borderRadius: BorderRadius.circular(15),
          value: _dialogCalendarPickerValue,
          dialogBackgroundColor: Colors.white,
        );
        if (values?.length == 2) {
          // ignore: avoid_print
          print(_getValueText(
            config.calendarType,
            values!,
          ));
          final data = daysBetween(values[0]!, values[1]!);
          difference = data;
          setState(() {
            _dialogCalendarPickerValue = values;
          });
        } else {
          setState(() {
            values?.clear();
            _dialogCalendarPickerValue.clear();
          });

          const snackBar = SnackBar(
            content: Text('Please select the end date'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: Container(
        padding: const EdgeInsets.all(10).copyWith(left: 2, right: 5),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border(
                bottom: BorderSide(width: 1, color: Colors.grey.shade300))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _dialogCalendarPickerValue.isEmpty
                ? Text(
                    'Select Date',
                    style: TextStyle(fontSize: 16, color: Color(0xFF9E9E9E)),
                  )
                : Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: _getValueText(
                            config.calendarType,
                            _dialogCalendarPickerValue,
                          ),
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        TextSpan(
                            text: '  Total $difference Days',
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade400)),
                      ],
                    ),
                  ),
            Icon(
              Icons.arrow_drop_down_outlined,
              color: Color(0xFF9E9E9E),
            ),
          ],
        ),
      ),
    );
  }

  int daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }
}
