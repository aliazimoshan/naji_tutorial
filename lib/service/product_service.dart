import 'package:dio/dio.dart';
import 'package:naji_tutorial/const/api_endpoint.dart';
import 'package:naji_tutorial/model/product_model.dart';

class ProductService {
  static Future<List<ProductModel>> get() async {
    try {
      final Response response = await Dio().get(APIEndpoint.product).timeout(
            const Duration(seconds: 10),
          );
      if (response.statusCode == 200) {
        print(response.data);
        List parsedJson = response.data;
        List<ProductModel> products = [];
        for (var val in parsedJson) {
          products.add(ProductModel.fromJson(val));
        }
        return products;
      } else {
        throw response;
      }
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  static Future<ProductModel> getSingle(String id) async {
    try {
      final Response response = await Dio().get("${APIEndpoint.product}/$id");
      if (response.statusCode == 200) {
        print(response.data);
        var parsedJson = response.data;

        return ProductModel.fromJson(parsedJson);
      } else {
        throw response;
      }
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
