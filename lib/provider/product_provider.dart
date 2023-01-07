import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:naji_tutorial/service/product_service.dart';

import '../model/product_model.dart';

//class ProductNotifier extends StateNotifier<List<ProductModel>> {
//  ProductNotifier() : super([productModelExample]);

//  Future<List<ProductModel>> get() async {
//    List<ProductModel> products = await ProductService.get();
//    return products;
//  }
//}

//final productProvider =
//    StateNotifierProvider<ProductNotifier, List<ProductModel>>((ref) {
//  return ProductNotifier();
//});

//final getProductProvider = Provider<>((ref) {
//  return ;
//});

final productProvider = FutureProvider<List<ProductModel>>((ref) async {
  List<ProductModel> products = await ProductService.get();
  return products;
});

//final productSingleProvider = FutureProvider<ProductModel>((ref) async {
//  ProductModel products = await ProductService.getSingle(id);
//  return products;
//});

final productSingleProvider =
    FutureProvider.family<ProductModel, String>((ref, id) async {
  ProductModel products = await ProductService.getSingle(id);
  return products;
});
