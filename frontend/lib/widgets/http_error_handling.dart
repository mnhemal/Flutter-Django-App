import 'dart:convert';
import 'package:frontend/widgets/custom_snack_bar.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';

class HttpErrorHandling {
  static void handleHttpError({
    required Response response,
    required BuildContext context,
    required VoidCallback onSuccess,
  }) async {
    switch (response.statusCode) {
      case 200:
      case 201:
        onSuccess();
        break;
      case 400:
        final errorMessage = json.decode(response.body)['error'] ??
            'The passed data is in the wrong format';
        CustomSnackBar.showSnackBar(
          context: context,
          text: errorMessage,
        );
        break;
      default:
        CustomSnackBar.showSnackBar(
          context: context,
          text: response.toString(),
        );
        break;
    }
  }
}
