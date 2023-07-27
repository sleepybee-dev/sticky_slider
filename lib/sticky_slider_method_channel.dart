import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'sticky_slider_platform_interface.dart';

/// An implementation of [StickySliderPlatform] that uses method channels.
class MethodChannelStickySlider extends StickySliderPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sticky_slider');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
