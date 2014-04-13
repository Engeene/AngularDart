import 'package:angular/angular.dart';
import 'my_list.dart';

class ListModule extends Module {
  ListModule() {
    type(ListComponent);
  }
}

main() => ngBootstrap(module: new ListModule());