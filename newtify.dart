
@PolymerRegister('custom-element')
class CustomElement extends PolymerElement {
  CustomElement.created() : super.created();

  String _someProp;

@Property(notify: true);
  String get someProp => _someProp;
}
