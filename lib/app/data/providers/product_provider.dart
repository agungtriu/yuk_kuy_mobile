import 'package:yuk_kuy_mobile/app/data/models/product_detail_model.dart';
import 'package:yuk_kuy_mobile/app/data/models/product_model.dart';

import 'base_provider.dart';

class ProductProvider extends BaseProvider {
  Future<ProductModel> listProduct() async {
    var response = await get('products/mobile');

    if (!response.body['status']) {
      return Future.error(response.body["message"]);
    } else {
      return productModelFromJson(response.bodyString.toString());
    }
  }

  Future<ProductModel> listProductPagination(int page) async {
    var response = await get('products/mobile?page=$page&limit=6');

    if (!response.body['status']) {
      return Future.error(response.body["message"]);
    } else {
      return productModelFromJson(response.bodyString.toString());
    }
  }

  Future<ProductModel> filterProduct(String name) async {
    var response = await get('products/mobile?city=$name');

    if (!response.body['status']) {
      return Future.error(response.body["message"]);
    } else {
      return productModelFromJson(response.bodyString.toString());
    }
  }

  Future<ProductModel> searchProduct(String name) async {
    var response = await get('products/search?key=$name');

    if (!response.body['status']) {
      return Future.error(response.body["message"]);
    } else {
      return productModelFromJson(response.bodyString.toString());
    }
  }

  Future<ProductDetailModel> detail_product(int id) async {
    var response = await get('products/mobile/detail/$id');

    if (!response.body['status']) {
      return Future.error(response.body["message"]);
    } else {
      return productDetailModelFromJson(response.bodyString.toString());
    }
  }
}
