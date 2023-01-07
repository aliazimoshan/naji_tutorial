import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:naji_tutorial/model/product_model.dart';

import '../../provider/product_provider.dart';
import '../widget/product_card.dart';

class ProductDetailPage extends ConsumerWidget {
  final int id;
  const ProductDetailPage(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(productSingleProvider(id.toString()));

    return Scaffold(
      appBar: AppBar(
        title: Text("product.title"),
      ),
      body: provider.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        data: (data) => ProductCardWidget(data),
        error: (error, stackTrace) => Center(
          child: Text(error.toString()),
        ),
      ),
    );
  }
}
