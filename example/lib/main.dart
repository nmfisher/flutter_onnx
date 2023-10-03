import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  late DynamicLibrary _dl;

  @override
  void initState() {
    super.initState();
    if (Platform.isLinux) {
      _dl = DynamicLibrary.open(File(Platform.resolvedExecutable).parent.path +
          "/lib/libonnxruntime.so.1.11.0");
    } else if (Platform.isAndroid) {
      _dl = DynamicLibrary.open("libonnxruntime.so");
    } else {
      _dl = DynamicLibrary.process();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $_platformVersion\n'),
        ),
      ),
    );
  }
}
