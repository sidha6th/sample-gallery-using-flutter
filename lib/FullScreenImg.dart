import 'dart:io';

import 'package:custom_gallery/gallery.dart';
import 'package:flutter/material.dart';

class FullScreenImg extends StatelessWidget {
  const FullScreenImg({ Key? key ,this.image}) : super(key: key);
final dynamic image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ValueListenableBuilder(valueListenable: database,
        builder: (context,List data,_) {
          return Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Center(
              child: Hero(
                        tag:data,child: Image.file(File(image.toString()))),
            )
                  
          );
        }
      ),
      
    );
  }
}