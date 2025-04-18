import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:api_rest_mvvm/models/product.dart';

class ApiService {
  final String baseUrl = 'https://fakestoreapi.com/products';

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Erreur lors de la récupération des produits.');
    }
  }
}
