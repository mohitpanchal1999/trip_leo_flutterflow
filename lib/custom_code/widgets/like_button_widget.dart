// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:like_button/like_button.dart';

class LikeButtonWidget extends StatefulWidget {
  const LikeButtonWidget({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<LikeButtonWidget> createState() => _LikeButtonWidgetState();
}

class _LikeButtonWidgetState extends State<LikeButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 40,
      width: widget.width ?? 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.grey.shade200),
          shape: BoxShape.circle),
      child: LikeButton(
        size: 28,
        isLiked: false,
        postFrameCallback: (LikeButtonState state) {
          state.controller?.forward();
        },
        likeBuilder: (bool isLiked) {
          return Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            color: isLiked ? Color(0xFFFF3131) : Colors.grey.shade400,
            size: 28,
          );
        },
        likeCountPadding: EdgeInsets.zero,
        onTap: onLikeButtonTapped,
      ),
    );
  }

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    return !isLiked;
  }
}
