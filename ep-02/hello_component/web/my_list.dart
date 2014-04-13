import 'package:angular/angular.dart';

@NgComponent(
  selector: 'my-list',
  templateUrl: 'my_list.html',
  publishAs: 'cmp')
class ListComponent {
  String newItem;
  List<Item> items = [];
  int max;
  
  @NgAttr('max-items')
  set maxItems(String value) {
    max = value == null ? 100 : int.parse(value);
  }
    
  void add() {
    if (newItem.trim().length != 0 && items.length < max) {
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