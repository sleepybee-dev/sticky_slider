import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'sticky_slider_method_channel.dart';

abstract class StickySliderPlatform extends PlatformInterface {
  /// Constructs a StickySliderPlatform.
  StickySliderPlatform() : super(token: _token);

  static final Object _token = Object();

  static StickySliderPlatform _instance = MethodChannelStickySlider();

  /// The default instance of [StickySliderPlatform] to use.
  ///
  /// Defaults to [MethodChannelStickySlider].
  static StickySliderPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [StickySliderPlatform] when
  /// they register themselves.
  static set instance(StickySliderPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
