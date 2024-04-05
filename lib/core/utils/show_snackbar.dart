import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
      content: Text(
        content,
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          letterSpacing: 1,
        ),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: AppPallete.gradient1,
      elevation: 10,
    ));
}
