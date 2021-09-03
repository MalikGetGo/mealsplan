import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';

void main() {
  runApp(MealPlan());
}

class MealPlan extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Meal Plan',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        routes: {
          '/': (ctx) => CategoriesScreen(),
          CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen()
        }
        // home: CategoriesScreen(),
        );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My Meals Plan"),
//       ),
//       body: Center(
//           child: Text(
//               "Time to EAT!!")), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
