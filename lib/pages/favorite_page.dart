import 'package:flutter/material.dart';
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        centerTitle: true,
        title: const Text("Favorites",style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
