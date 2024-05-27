import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:individual_project/controller/fav_controller.dart';
import 'package:individual_project/data/data.dart';
import 'package:individual_project/model/history.dart';
import 'package:individual_project/screen/widget/Menu_List/Category/item_view_cart.dart';
import 'package:individual_project/screen/widget/Menu_List/Favorite/fav_list.dart';

import '../repositary/repo_controller.dart';

class AddToHistoryController extends GetxController {
  final ProductStorage _historyStorage = ProductStorage.instance;

  final foodlisthistory = <History>[].obs;

  void getAllHistory() async {
    final foodGetHistory = await _historyStorage.getHistory();
    foodlisthistory(foodGetHistory);
  }


}
