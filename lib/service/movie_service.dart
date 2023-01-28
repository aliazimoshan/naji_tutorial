import 'package:dio/dio.dart';
import 'package:naji_tutorial/const/api_endpoint.dart';
import 'package:naji_tutorial/model/movie_model.dart';

class MovieService {
  static Future<List<MovieModel>> get(String query) async {
    try {
      String url =
          (APIEndpoint.movieList + query).trim().replaceAll(" ", "%20");
      final Response response = await Dio().get(url);
      if (response.statusCode == 200) {
        //print(response.data);
        List parsedJson = response.data["Search"];
        List<MovieModel> movies = [];
        for (var val in parsedJson) {
          movies.add(MovieModel.fromJson(val));
        }
        print(movies);
        return movies;
      } else {
        throw response;
      }
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  //static Future<ProductModel> getSingle(String id) async {
  //  try {
  //    final Response response = await Dio().get("${APIEndpoint.product}/$id");
  //    if (response.statusCode == 200) {
  //      print(response.data);
  //      var parsedJson = response.data;

  //      return ProductModel.fromJson(parsedJson);
  //    } else {
  //      throw response;
  //    }
  //  } catch (e) {
  //    print(e.toString());
  //    rethrow;
  //  }
  //}
}
