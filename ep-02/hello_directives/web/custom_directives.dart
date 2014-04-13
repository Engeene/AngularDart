import 'dart:html';
import 'package:angular/angular.dart';

@NgDirective(selector: '[hover]')
class Hover {
  Element element;
  String originalColor;
  
  Hover(this.element) {
    originalColor = element.style.color;
    element
      ..onMouseEnter.listen((e) {
        element.style.color = 'red';
      })
      
      ..onMouseLeave.listen((e) {
        element.style.color = originalColor;
      });
  }
}

class MyCustomDirective extends Module {
  MyCustomDirective() {
    type(Hover);
  }
}

main() {
  ngBootstrap(module: new MyCustomDirective());
}