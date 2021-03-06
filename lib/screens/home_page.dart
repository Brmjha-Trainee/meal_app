import 'package:flutter/material.dart';
import 'package:meal_app/screens/meals.dart';
import 'package:meal_app/utils/main_drawer.dart';
import 'package:meal_app/utils/photo_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Categories',
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.restaurant_rounded))
        ],
      ),
      body: GridView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.3,
          ),
          itemCount: imgList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                InkWell(
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          Image.asset(
                            imgList[index].image,
                            fit: BoxFit.fitWidth,
                            height: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              imgList[index].name,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const MealScreen(),
                          ));
                    }),
              ],
            );
          }),
      drawer: const MainDrawer(),
    );
  }
}
