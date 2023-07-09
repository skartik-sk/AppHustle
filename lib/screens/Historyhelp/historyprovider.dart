import 'package:apphustle/screens/search%20help/searchmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class homeprofider extends ChangeNotifier{
  List<searchmodel> _history = [];
  List<searchmodel> get history => _history;

  void toggleFavorite(searchmodel n) {
    if (isExist(n)) {
      _history.remove(n);
    } else {
      _history.add(n);
    }
    notifyListeners();
  }
// bool hekhyalistme(int n ){
//     if()
// }
  void remorew(searchmodel n){
    _history.remove(n);
    notifyListeners();
  }
  bool isExist(searchmodel n) {
    final isExist = _history.contains(n);
    return isExist;
  }

  void clearhistroy() {
    _history = [];
    notifyListeners();
  }

  static homeprofider of(
      BuildContext context, {
        bool listen = true,
      }) {
    return Provider.of<homeprofider>(
      context,
      listen: listen,
    );
  }

}