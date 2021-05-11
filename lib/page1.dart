import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: TextButton(
          onPressed: () => context.vxNav.push(Uri.parse('/page2')),
          child: Text('Next'),
        ),
      ),
    );
  }
}
