@HtmlImport('toggleIcon.html')
library First_try.lib.toggleIcon;

import 'dart:html';
import 'package:web_components/web_components.dart' show HtmlImport;

// components
import 'package:polymer/polymer.dart';

@PolymerRegister('toggle_Icon')
class IconToggle extends PolymerElement {

  @property
  String toggleIcon;

  @Property(notify: true, reflectToAttribute: true)
  bool pressed = false;

  IconToggle.created() : super.created();

  void ready() {
    print("$runtimeType::ready()");
  }

  @Listen('tap')
  void toggle(Event event, Map detail) {
    set('pressed', !pressed);
  }
}
