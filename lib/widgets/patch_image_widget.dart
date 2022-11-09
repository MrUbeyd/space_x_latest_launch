import 'dart:developer';

import 'package:flutter/material.dart';

class PatchImageComponent extends StatelessWidget {
  PatchImageComponent({Key? key, required this.imgUrl}) : super(key: key);
  String imgUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      child: Align(
        alignment: Alignment.center,
        child: Image.network(
          imgUrl,
          height: 150.0,
          errorBuilder: (context, error, stackTrace) {
            log("network image error: $error");
            return const SizedBox(
              height: 150.0,
              child: Icon(
                Icons.error,
              ),
            );
          },
        ),
      ),
    );
  }
}
