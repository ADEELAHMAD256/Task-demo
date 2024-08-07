import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:task_project/utils/custom_text.dart';

import '../const/colors.dart';

Future<void> showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Lottie.network(
                  "https://lottie.host/91a1f551-d4bc-41ab-9c2f-cc27ada2ff6e/Q66mgNodNS.json"),
              Center(
                child: CustomTextUrbanist(
                  text: 'NO Website found',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: k0D2444,
                ),
              ),
            ],
          ),
        ),
        // actions: <Widget>[
        //   TextButton(
        //     child: const Text('Approve'),
        //     onPressed: () {
        //       Navigator.of(context).pop();
        //     },
        //   ),
        // ],
      );
    },
  );
}
