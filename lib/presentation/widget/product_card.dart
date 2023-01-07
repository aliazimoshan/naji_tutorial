import 'package:flutter/material.dart';
import 'package:naji_tutorial/model/product_model.dart';

class ProductCardWidget extends ListTile {
  final ProductModel product;

  const ProductCardWidget(this.product, {super.key, super.onTap});

  @override
  Widget? get title => Text(product.title);

  @override
  Widget? get subtitle => Text(
        product.description,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      );

  @override
  Widget? get leading => Image.network(product.image, width: 50, height: 50);

  //@override
  //Widget build(BuildContext context) {
  //  return ListTile(
  //    title: Text(product.title),
  //    subtitle: Text(
  //      product.description,
  //      maxLines: 2,
  //      overflow: TextOverflow.ellipsis,
  //    ),
  //    leading: Image.network(product.image, width: 50, height: 50),
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
