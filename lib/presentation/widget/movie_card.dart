import 'package:flutter/material.dart';
import 'package:naji_tutorial/model/movie_model.dart';

class MovieCardWidget extends ListTile {
  final MovieModel movie;

  const MovieCardWidget(this.movie, {super.key, super.onTap});

  @override
  Widget? get title => Text(movie.title);

  @override
  Widget? get subtitle => Text(
        movie.year,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      );

  @override
  Widget? get leading => movie.poster.contains("http")
      ? Image.network(movie.poster, width: 50, height: 50)
      : const Icon(Icons.movie);

  //@override
  //Widget build(BuildContext context) {
  //  return ListTile(
  //    title: Text(Movie.title),
  //    subtitle: Text(
  //      Movie.description,
  //      maxLines: 2,
  //      overflow: TextOverflow.ellipsis,
  //    ),
  //    leading: Image.network(Movie.image, width: 50, height: 50),
  //  );
  //}
}

//class ButtonWidget extends StatelessWidget {
//  final Color color;
//  final Color borderColor;
//  final double borderWidth;
//  final String title;

//  const ButtonWidget({
//    super.key,
//    this.color = Colors.red,
//    required this.title,
//    required this.borderColor,
//    required this.borderWidth,
//  });
//  @override
//  Widget build(BuildContext context) {
//    return OutlinedButton(
//      onPressed: () {},
//      child: Container(),
//    );
//  }
//}

//class ButtonContainer extends Container {
//  final String title;
//  ButtonContainer(this.title) : super(color: Colors.red);

//  @override
//  Color? get color => super.color;

//  @override
//  Widget? get child => Text(
//        title,
//        style: TextStyle(),
//      );
//}
