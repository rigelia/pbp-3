import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/product.dart';

class ItemDetailPage extends StatelessWidget {
  final String productId;

  ItemDetailPage({required this.productId});

  Future<Product> fetchProductDetail() async {
    final response = await http.get(
      Uri.parse('http://localhost:8000/main/user-products/$productId/'),
      headers: {
        'Authorization': 'Bearer YOUR_AUTH_TOKEN',
      },
    );

    if (response.statusCode == 200) {
      return Product.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load product details');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Item Details')),
      body: FutureBuilder<Product>(
        future: fetchProductDetail(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final product = snapshot.data!;
            return Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${product.name}', style: TextStyle(fontSize: 20)),
                  Text('Price: ${product.price}',
                      style: TextStyle(fontSize: 20)),
                  Text('Description: ${product.description}',
                      style: TextStyle(fontSize: 20)),
                  Text('Effects: ${product.effects}',
                      style: TextStyle(fontSize: 20)),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back'),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
