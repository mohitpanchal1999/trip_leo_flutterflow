// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:readmore/readmore.dart';

class ReadMoreWidget extends StatefulWidget {
  const ReadMoreWidget({
    super.key,
    this.width,
    this.height,
    this.inputText,
    this.trimLines,
    this.switchColor,
    this.textColor,
    this.textSize,
  });

  final double? width;
  final double? height;
  final String? inputText;
  final int? trimLines;
  final Color? switchColor;
  final Color? textColor;
  final double? textSize;

  @override
  State<ReadMoreWidget> createState() => _ReadMoreWidgetState();
}

class _ReadMoreWidgetState extends State<ReadMoreWidget> {
  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      widget.inputText ??
          'Beispieltext', // Use the 'input' property as the text to be displayed.
      trimLines: widget.trimLines ?? 3,
      colorClickableText: widget.switchColor ?? Color.fromARGB(255, 70, 0, 169),
      trimMode: TrimMode.Line,
      textAlign: TextAlign.justify,
      style: TextStyle(
          color: widget.textColor ?? Colors.black,
          fontSize: widget.textSize ?? 14),
      trimCollapsedText: '\nRead More',
      trimExpandedText: ' show less',
      moreStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: widget.switchColor ?? Colors.black),
      lessStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: widget.switchColor ?? Colors.black),
    );
  }
}
