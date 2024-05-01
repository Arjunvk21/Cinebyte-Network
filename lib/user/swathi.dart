import 'package:flutter/material.dart';

class swathi extends StatelessWidget {
  const swathi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: TextField(
                 decoration: InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Implement search functionality here
                      },
                    ),
                 ),
                 style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                children: <Widget>[
                 IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      print('Shopping cart clicked');
                    },
                 ),
                 IconButton(
                    icon: Icon(Icons.message),
                    onPressed: () {
                      print('Message clicked');
                    },
                 ),
                ],
              ),
            ],
          ),
        ),
        body: Center(
          child: Text('Your app content goes here'),
        ),
      ),
    );
  }
}
