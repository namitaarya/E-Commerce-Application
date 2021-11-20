import 'package:flutter/material.dart';

import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Shirt',
      description: 'A red shirt',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),

    Product(
      id: 'p5',
      title: 'Mobile',
      description: 'Make calls!',
      price: 25500,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/FastFig_on_an_iPhone.png/640px-FastFig_on_an_iPhone.png',
    ),

    Product(
      id: 'p6',
      title: 'Laptop',
      description: 'Work!',
      price: 50000,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Lenovo_G500s_%28Community_laptop_WMDE%29.jpg/640px-Lenovo_G500s_%28Community_laptop_WMDE%29.jpg',
    ),

     Product(
      id: 'p7',
      title: 'Notebooks',
      description: 'Study',
      price: 200,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Notebooks-rainbow.jpg/640px-Notebooks-rainbow.jpg'
    ),

    Product(
      id: 'p8',
      title: 'Buoquet',
      description: 'Flowers',
      price: 200,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Heliopsis_July_2011-2.jpg/640px-Heliopsis_July_2011-2.jpg'
    ),

    Product(
      id: 'p9',
      title: 'Rubics Cube',
      description: 'Study',
      price: 200,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Rubik%27s_cube_v3.svg/640px-Rubik%27s_cube_v3.svg.png'
    ),

    Product(
      id: 'p10',
      title: 'Bottle',
      description: 'Study',
      price: 200,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Filtered_Water_Bottle.jpg/640px-Filtered_Water_Bottle.jpg'
    ),
  ];
  // var _showFavoritesOnly = false;

  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
