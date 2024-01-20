import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';


class ModelView extends StatelessWidget {
  final String name;
  const ModelView({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: const Text('Model Viewer')),
        body: ModelViewer(
          backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
          src: 'assets/$name',
          alt: 'A 3D model of an astronaut',
          ar: true,
          autoRotate: true,
          iosSrc: 'https://modelviewer.dev/shared-assets/models/Astronaut.usdz',
          disableZoom: true,
        ),

    );
  }
}