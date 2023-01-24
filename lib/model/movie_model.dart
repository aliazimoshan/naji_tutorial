class MovieModel {
  final String title;
  final String year;
  final String imdbID;
  final String type;
  final String poster;

  MovieModel({
    required this.title,
    required this.year,
    required this.imdbID,
    required this.type,
    required this.poster,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      title: json["Title"],
      year: json["Year"],
      imdbID: json["imdbID"],
      type: json["Type"],
      poster: json["Poster"],
    );
  }
}

MovieModel MovieModelExample = MovieModel(
  title: "Phantasm III: Lord of the Dead",
  year: "1994",
  imdbID: "tt0110823",
  type: "movie",
  poster:
      "https://m.media-amazon.com/images/M/MV5BNGE5Nzc5ZDUtYjQ4OC00OGU0LWE2YzEtMjE2NjRkYTFjYjgxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg",
);



//{
//    "id": 1,
//    "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
//    "price": 109.95,
//    "description": "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
//    "category": "men's clothing",
//    "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
//    "rating": {
//        "rate": 3.9,
//        "count": 120
//}