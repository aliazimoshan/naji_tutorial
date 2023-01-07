import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:naji_tutorial/presentation/page/product_detail_page.dart';

import '../../provider/product_provider.dart';
import '../widget/product_card.dart';

class ProductPage extends ConsumerWidget {
  const ProductPage({super.key});
  static int count = 0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(productProvider);
    //final productNotifier = ref.read(productProvider)

    return Scaffold(
      appBar: AppBar(
        title: const Text("NRDC Riverpod"),
      ),
      //floatingActionButton: FloatingActionButton(
      //  onPressed: () => ref.refresh(productProvider.future),
      //  child: const Icon(Icons.get_app),
      //),
      body: provider.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        data: (data) {
          return RefreshIndicator(
            onRefresh: () => ref.refresh(productProvider.future),
            child: ListView(
              children: data.map((val) {
                action() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(val.id),
                    ),
                  );
                }

                return ProductCardWidget(
                  val,
                  onTap: action,
                );
              }).toList(),
            ),
          );
        },
        error: (error, stackTrace) => Center(
          child: Text(error.toString()),
        ),
      ),
    );
  }
}
