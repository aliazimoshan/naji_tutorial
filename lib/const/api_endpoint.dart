import 'package:naji_tutorial/const/token.dart';

class APIEndpoint {
  static const String _baseURL = "http://www.omdbapi.com/";
  static String movieList = "$_baseURL?${Token.OMDB}&s=";
}

//http://www.omdbapi.com/?s=The+lord&i=tt3896198&apikey=dc4c2c90&page=2