import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'item_detail_page.dart';
import '../models/product.dart';

class ItemListPage extends StatelessWidget {
  Future<List<Product>> fetchProducts() async {
    final response = await http
        .get(Uri.parse('http://localhost:8000/user-products/'), headers: {
      'Authorization ': 'Bearer YOUR_AUTH_TOKEN',
    });

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((item) => Product.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('All Items')),
      body: FutureBuilder<List<Product>>(
        future: fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final products = snapshot.data!;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle:
                      Text('${product.description}\nPrice: ${product.price}'),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ItemDetailPage(productId: product.id),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
