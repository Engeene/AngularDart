import 'package:angular/angular.dart';

@NgController(
    selector: '[list]',
    publishAs: 'ctrl')
class ListController {
  String newItem;
  List<Item> items = [];
  ListController();
  
  void add() {
    if (newItem.trim().length != 0) {
      items.add(new Item(newItem));
      newItem = '';
    }
  }
  
  void remove(Item item) {
    items.remove(item);
  }
}

class Item {
  String text;
  Item(this.text);
}

class ListModule extends Module {
  ListModule() {
    type(ListController);
  }
}

main() {
  ngBootstrap(module: new ListModule());
}
