@HtmlImport('toggle_icon.html')
library polymer_dart.toggle_icon;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:polymer_elements/iron_icons.dart';
import 'package:polymer_elements/iron_icon.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

@PolymerRegister('toggle-icon')
class IconToggle extends PolymerElement {
  @property
  String toggleIcon;

  @Property(notify: true, reflectToAttribute: true)
  bool pressed = false;

  IconToggle.created() : super.created();

  void ready() {}

  @Listen('tap')
  void toggle(Event event, Map detail) {
    set('pressed', !pressed);
  }
}
