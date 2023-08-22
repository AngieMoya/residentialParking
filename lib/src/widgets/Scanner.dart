import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:provider/provider.dart';
import 'package:residential_parking/src/providers/user_provider.dart';

class Scanner extends StatefulWidget {
  const Scanner({super.key, required this.title});

  final String title;
  @override
  _ScannerState createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    String usuario = context.watch<UserProvider>().user;
    return Container(
      child: Text(usuario),
    );
  }
}
