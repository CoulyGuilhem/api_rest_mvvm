import 'package:flutter/foundation.dart';
import 'package:api_rest_mvvm/services/api_service.dart';
import 'package:api_rest_mvvm/models/product.dart';

class ProductViewModel extends ChangeNotifier {
  final ApiService _apiService = ApiService();

  bool _loading = false;
  bool get loading => _loading;

  List<Product> _products = [];
  List<Product> get products => _products;

  Future<void> fetchProducts() async {
    setLoading(true);
    try {
      _products = await _apiService.fetchProducts();
    } catch (e) {
      print(e.toString());
    }
    setLoading(false);
  }

  void setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }
}
