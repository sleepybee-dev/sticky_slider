import 'package:flutter_test/flutter_test.dart';
import 'package:sticky_slider/sticky_slider.dart';
import 'package:sticky_slider/sticky_slider_platform_interface.dart';
import 'package:sticky_slider/sticky_slider_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockStickySliderPlatform
    with MockPlatformInterfaceMixin
    implements StickySliderPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final StickySliderPlatform initialPlatform = StickySliderPlatform.instance;

  test('$MethodChannelStickySlider is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelStickySlider>());
  });

  // test('getPlatformVersion', () async {
  //   StickySlider stickySliderPlugin = StickySlider();
  //   MockStickySliderPlatform fakePlatform = MockStickySliderPlatform();
  //   StickySliderPlatform.instance = fakePlatform;
  //
  //   expect(await stickySliderPlugin.getPlatformVersion(), '42');
  // });
}
