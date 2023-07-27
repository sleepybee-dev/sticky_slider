#ifndef FLUTTER_PLUGIN_STICKY_SLIDER_PLUGIN_H_
#define FLUTTER_PLUGIN_STICKY_SLIDER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace sticky_slider {

class StickySliderPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  StickySliderPlugin();

  virtual ~StickySliderPlugin();

  // Disallow copy and assign.
  StickySliderPlugin(const StickySliderPlugin&) = delete;
  StickySliderPlugin& operator=(const StickySliderPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace sticky_slider

#endif  // FLUTTER_PLUGIN_STICKY_SLIDER_PLUGIN_H_
