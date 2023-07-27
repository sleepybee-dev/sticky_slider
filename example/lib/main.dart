import 'package:flutter/material.dart';
import 'package:sticky_slider/line_slider_tickmark_shape.dart';
import 'dart:async';

import 'package:sticky_slider/sticky_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  double curVa = 0.5;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    // try {
    //   platformVersion =
    //       await _stickySliderPlugin.getPlatformVersion() ?? 'Unknown platform version';
    // } on PlatformException {
    //   platformVersion = 'Failed to get platform version.';
    // }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      // _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            Center(
              child: Text('Running on: $_platformVersion\n'),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  tickMarkShape: const LineSliderTickMarkShape(
                      lineWidth: 10, lineHeight: 20)),
              child: StickySlider(
                  value: curVa,
                  points: const [0.2, 0.8],
                  pointCoverage: 0.08,
                  onChanged: (value) {
                    setState(() {
                      curVa = value;
                    });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
