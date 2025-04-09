import 'package:flutter/material.dart';
import 'package:api_rest_mvvm/models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image en grand
            Center(
              child: Image.network(
                product.image,
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 16),
            // Titre
            Text(
              product.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // Prix
            Text(
              '\$${product.price}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 16),
            // Description fictive
            const Text(
              'Description fictive : Lorem ipsum dolor sit amet, '
                  'consectetur adipiscing elit. Curabitur accumsan urna augue. '
                  'Nullam sagittis, orci non pellentesque placerat, '
                  'lorem nulla facilisis ipsum, non lobortis massa ligula non lectus.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
