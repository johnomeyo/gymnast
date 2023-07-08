import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:gymast/provider/fav_provider.dart';
import 'package:provider/provider.dart';

class SampleLikeItems extends StatefulWidget {
  const SampleLikeItems({super.key});

  @override
  State<SampleLikeItems> createState() => _SampleLikeItemsState();
}

class _SampleLikeItemsState extends State<SampleLikeItems> {
  final words = nouns.take(50).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView.builder(
      itemCount: words.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(words[index]),
        trailing: GestureDetector(
            onTap: () {
              Provider.of<FavoriteProvider>(context, listen: false)
                  .toggleFav(words[index]);
            },
            child: Provider.of<FavoriteProvider>(context, listen: false)
                    .isExist(words[index])
                ? const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                : const Icon(Icons.favorite_outline)),
      ),
    )));
  }
}
