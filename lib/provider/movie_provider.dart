import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:naji_tutorial/service/movie_service.dart';
import '../model/movie_model.dart';

final movieProvider =
    FutureProvider.family<List<MovieModel>, String>((ref, query) async {
  //print(query);
  if (query.length >= 3 && query[query.length - 1] != " ") {
    List<MovieModel> movies = await MovieService.get(query);
    return movies;
  }
  return [];
});


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



//final productSingleProvider = FutureProvider<ProductModel>((ref) async {
//  ProductModel products = await ProductService.getSingle(id);
//  return products;
//});

//final productSingleProvider =
//    FutureProvider.family<ProductModel, String>((ref, id) async {
//  ProductModel products = await ProductService.getSingle(id);
//  return products;
//});
