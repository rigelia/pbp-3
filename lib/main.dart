import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:ecomm/pages/item_list_page.dart';
import 'package:ecomm/widgets/login.dart';
import 'package:ecomm/widgets/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (_) {
          CookieRequest request = CookieRequest();
          return request;
        },
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.blue,
              textTheme: ButtonTextTheme.primary,
            ),
          ),
          home: MainPage(),
        ));
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Utama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Text('Login'),
            ),
            SizedBox(height: 20), // Spacing between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterPage(),
                  ),
                );
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Halaman Utama'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Tambah Item'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FormPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('View Items'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ItemListPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FormPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: amountController,
                decoration: InputDecoration(labelText: 'Amount'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an amount';
                  }
                  final num? number = num.tryParse(value);
                  if (number == null || number <= 0) {
                    return 'Enter a valid positive number';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(labelText: 'Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Show AlertDialog with form data
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Confirm Item Details'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Name: ${nameController.text}'),
                              Text('Amount: ${amountController.text}'),
                              Text(
                                  'Description: ${descriptionController.text}'),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                              },
                              child: Text('Edit'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text('Item saved successfully')),
                                );
                                Navigator.pop(context); // Go back to main page
                              },
                              child: Text('Save'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
