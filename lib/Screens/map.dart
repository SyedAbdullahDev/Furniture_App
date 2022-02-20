// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class MaP_CUSTOM extends StatelessWidget {
  const MaP_CUSTOM({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/map.png',fit: BoxFit.cover,
            height: 800,
            width: 830,
          ),
        ],
      ),
    );
  }
}