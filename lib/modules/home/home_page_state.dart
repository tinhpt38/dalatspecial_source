import 'package:dalatspecial/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePageState extends ChangeNotifier {
  List<Product> _products = [];
  List<Product> get products => _products;
  BoxConstraints _constraints;
  BoxConstraints get constraints => _constraints;
  set constraints(value) => _constraints = value;

  Map<String, Map<String, dynamic>> _config = {
    'desktop': {
      'childAspectRatio': 3 / 4,
      'containerPaddingHorizontal': 1 / 8,
      'containerPaddingVertical': 48,
      'crossAxisCount': 3,
      'mainAxisSpacing': 1 / 20,
      'crossAxisSpacing': 1 / 20
    },
    'laptop': {
      'childAspectRatio': 3 / 4,
      'containerPaddingHorizontal': 1 / 10,
      'containerPaddingVertical': 32,
      'crossAxisCount': 3,
      'mainAxisSpacing': 1 / 20,
      'crossAxisSpacing': 1 / 20
    },
    'tablet': {
      'childAspectRatio': 3 / 4,
      'containerPaddingHorizontal': 1 / 10,
      'containerPaddingVertical': 32,
      'crossAxisCount': 2,
      'mainAxisSpacing': 1 / 20,
      'crossAxisSpacing': 1 / 20
    },
    'small': {
      'childAspectRatio': 3 / 4,
      'containerPaddingHorizontal': 0,
      'containerPaddingVertical': 24,
      'crossAxisCount': 1,
      'mainAxisSpacing': 1 / 10,
      'crossAxisSpacing': 1 / 10
    }
  };

  HomePageState() {
    initListView();
  }

  initListView() {
    _products.add(Product(
        image: './upload/product_images/nam_tuoi_1.jpg',
        title: "ĐÔNG TRÙNG HẠ THẢO TƯƠI",
        unit: "180 - 220 gram",
        price: '250.000đ'));
    _products.add(Product(
        image: './upload/product_images/nam_kho_12g.jpg',
        title: "ĐÔNG TRÙNG HẠ THẢO KHÔ",
        unit: "12 gram",
        price: '400.000đ'));
    _products.add(Product(
        image: './upload/product_images/nam_kho_50g.jpg',
        title: "ĐÔNG TRÙNG HẠ THẢO KHÔ",
        unit: "50 gram",
        price: '1.300.000đ'));
    _products.add(Product(
        image: './upload/product_images/nhong.jpg',
        title: "NHỘNG ĐÔNG TRÙNG HẠ THẢO",
        unit: "",
        price: '50.000 đ/con'));
    // cốm
    _products.add(Product(
        image: './upload/product_images/com_gung_1.jpg',
        title: "CỐM GỪNG ĐÔNG TRÙNG HẠ THẢO",
        unit: "35 gram",
        price: '140.000đ'));

    _products.add(Product(
        image: './upload/product_images/yen_1.jpg',
        title: "YẾN ĐÔNG TRÙNG HẠ THẢO",
        unit: "Hũ",
        price: '85.000đ'));

    _products.add(Product(
        image: './upload/product_images/yen_hop.jpg',
        title: "YẾN ĐÔNG TRÙNG HẠ THẢO",
        unit: "Hộp",
        price: '500.000đ'));

    // ruou chai lon
    _products.add(Product(
        image: './upload/product_images/ruou_700ml_1.jpg',
        title: 'Rượu đông trùng hạ thảo',
        unit: "700 ml",
        price: '500.000đ'));
    // chai dep
    _products.add(Product(
        image: './upload/product_images/ruou_700ml_dep_1.jpg',
        title: 'Rượu đông trùng hạ thảo',
        unit: "700 ml",
        price: '1.500.000đ'));

    _products.add(Product(
        image: './upload/product_images/ruou_2l_1.jpg',
        title: "RƯỢU ĐÔNG TRÙNG HẠ THẢO",
        unit: "2500 ml",
        price: '1.500.000đ'));

    _products.add(Product(
        image: './upload/product_images/ruou_2700ml.jpg',
        title: "RƯỢU ĐÔNG TRÙNG HẠ THẢO",
        unit: "2700 ml",
        price: '1.700.000đ'));

    _products.add(Product(
        image: './upload/product_images/ruou_3l_1.jpg',
        title: "RƯỢU ĐÔNG TRÙNG HẠ THẢO",
        unit: "3000 ml",
        price: '1.900.000đ'));
  }

  Map<String, dynamic> get demension {
    //desktop
    if (_constraints.maxWidth >= 1200) {
      return _config['desktop'];
    } else if (_constraints.maxWidth >= 992) {
      return _config['laptop'];
    } else if (_constraints.maxWidth >= 768) {
      return _config['tablet'];
    }
    return _config['small'];
  }
}
