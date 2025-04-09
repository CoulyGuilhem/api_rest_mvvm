import 'package:api_rest_mvvm/viewmodels/product_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/product_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductViewModel>(
          create: (_) => ProductViewModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Fake Store App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ProductListScreen(),
      ),
    );
  }
}
