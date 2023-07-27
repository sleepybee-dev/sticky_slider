//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <sticky_slider/sticky_slider_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) sticky_slider_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "StickySliderPlugin");
  sticky_slider_plugin_register_with_registrar(sticky_slider_registrar);
}
