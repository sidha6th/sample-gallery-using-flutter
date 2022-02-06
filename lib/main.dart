import 'dart:io';

import 'package:custom_gallery/gallery.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    Directory directory=Directory.fromUri(Uri.parse('/data/data/com.example.custom_gallery/'));
   getitems(directory);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gallery(),
    );
  }
}
