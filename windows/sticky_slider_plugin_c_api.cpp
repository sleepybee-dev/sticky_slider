#include "include/sticky_slider/sticky_slider_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "sticky_slider_plugin.h"

void StickySliderPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  sticky_slider::StickySliderPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
