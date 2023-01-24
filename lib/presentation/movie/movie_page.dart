import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/movie_provider.dart';
import '../widget/movie_card.dart';

class MoviePage extends ConsumerWidget {
  MoviePage({super.key});
  static int count = 0;
  final TextEditingController controller = TextEditingController(text: "God");

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(movieProvider(controller.text));
    //final productNotifier = ref.read(productProvider)

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: controller,
                decoration: const InputDecoration(hintText: "Search"),
                onChanged: (value) => ref.watch(movieProvider(controller.text)),
              ),
            ),
            IconButton(
              onPressed: () => ref.watch(movieProvider(controller.text)),
              icon: const Icon(Icons.search),
            )
          ],
        ),
      ),
      //floatingActionButton: FloatingActionButton(
      //  onPressed: () => ref.refresh(productProvider.future),
      //  child: const Icon(Icons.get_app),
      //),
      body: provider.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        data: (data) {
          return ListView(
            children: data.map((val) {
              //action() {
              //  Navigator.push(
              //    context,
              //    MaterialPageRoute(
              //      builder: (context) => ProductDetailPage(val.id),
              //    ),
              //  );
              //}
              return MovieCardWidget(val);
            }).toList(),
          );
        },
        error: (error, stackTrace) => Center(
          child: Text(error.toString()),
        ),
      ),
    );
  }
}
