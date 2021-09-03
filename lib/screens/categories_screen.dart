import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widget/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('My Meals Plan')),
        body: GridView(
            children: DUMMY_CATEGORIES
                .map((catData) =>
                    CategoryItem(catData.id, catData.title, catData.color))
                .toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            )));
  }
}
