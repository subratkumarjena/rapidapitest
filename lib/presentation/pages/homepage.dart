import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoappfire/data/api_helper.dart';
import 'package:todoappfire/data/food/foodmodel/recipemodel.dart';
import 'package:todoappfire/data/urls.dart';
import 'package:todoappfire/presentation/custom_widgets/recipe_card.dart';
import 'package:todoappfire/presentation/pages/recipedetails.dart';



class Homepage extends StatefulWidget{
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List<Recipe> _recipes = [];

  @override
  void initState() {
    super.initState();
    getRecipe();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text("Redchili")
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: _recipes.length,
        itemBuilder: (_, index) {
          final recipe = _recipes[index];
          return  GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailPage(recipe: recipe),
                ),
              );
            },
            child: RecipeCard(
              title: recipe.name!,
              cookTime: recipe.totalTime!,
              rating: recipe.rating!.toString(),
              thumbnailUrl: recipe.images!,
            ),
          );
        },
      ),
    );
  }

  void getRecipe() async {
    var resJson = await ApiHelper().getAPI(url: Urls.getfoodrecipe);
    if (resJson != null) {
      List _temp = [];
      for (var i in resJson['feed']) {
        _temp.add(i['content']['details']);
      }
      setState(() {
        _recipes = Recipe.recipesFromSnapshot(_temp);
      });
      print(_recipes);
    }
  }
}
