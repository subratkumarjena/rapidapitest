import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../data/food/foodmodel/recipemodel.dart';

class RecipeDetailPage extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailPage({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name!),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(recipe.images!),
            SizedBox(height: 8.0),
            Text(recipe.name!, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.black)),
            SizedBox(height: 8.0),
            Text('Rating: ${recipe.rating}', style: TextStyle(fontSize: 18,color: Colors.black)),
            SizedBox(height: 8.0),
            Text('Total Time: ${recipe.totalTime}', style: TextStyle(fontSize: 18,color: Colors.black)),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}
