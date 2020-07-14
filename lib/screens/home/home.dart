import 'package:flutter/material.dart';
import 'package:food/screens/food-details/food-details.dart';
import 'package:food/screens/shared/app-bar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Navigation
            MyAppBar(showBackButton: false),
            //Title
            Text('Simple way to find\nTasty food',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold)),
            //Category items
            ListCategoryItems(),
            SearchBox(),
            SizedBox(
              height: 30,
            ),
            Flexible(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FoodDescription(
                    image: 'assets/images/image_1.png',
                    price: 20,
                    title: 'Vegan salad bowl',
                    subtitle: 'With red tomato',
                    description:
                        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ',
                  ),
                  FoodDescription(
                    image: 'assets/images/image_2.png',
                    price: 20,
                    title: 'Vegan salad bowl 2',
                    subtitle: 'With red beans',
                    description:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      Icon(Icons.add,
                          color: Theme.of(context).colorScheme.primary)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// FOOD DESCRIPTION
class FoodDescription extends StatelessWidget {
  final String image;
  final double price;
  final String title;
  final String subtitle;
  final String description;

  FoodDescription(
      {this.image, this.price, this.title, this.subtitle, this.description});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => FoodDetailsPage()));
      },
      child: Container(
        width: 320,
        height: 200,
        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: Stack(
          children: [
            //big rectangle
            Positioned(
              top: 25,
              left: 20,
              child: Container(
                width: 300,
                height: 450,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(35)),
              ),
            ),
            // circle image bg
            Positioned(
              top: 15,
              left: 20,
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.pink[100]),
              ),
            ),
            Container(
              width: 170,
              height: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              right: 20,
              top: 90,
              child: Text(
                '\$20',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 200,
              left: 40,
              child: RichText(
                text: TextSpan(
                  text: '$title\n',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: '$subtitle',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(color: Colors.grey[400]),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 270,
              left: 40,
              child: Container(
                width: 260,
                height: 200,
                child: Text(
                  '$description',
                  maxLines: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// MENU COM CATEGORIAS
class ListCategoryItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryItem(title: 'All', active: true),
          CategoryItem(title: 'Italian', active: false),
          CategoryItem(title: 'Asian', active: false),
          CategoryItem(title: 'Chinese', active: false),
          CategoryItem(title: 'Japanese', active: false),
          CategoryItem(title: 'Portuguese', active: false),
          CategoryItem(title: 'Loren', active: false),
        ],
      ),
    );
  }
}

//SEARCH BOX
class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      child: TextField(
        decoration: InputDecoration(
          isDense: true,
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.onSecondary,
            size: 28,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200], width: 2),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200], width: 2),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
      ),
    );
  }
}

//CADA ITEM DO MENU
class CategoryItem extends StatelessWidget {
  final String title;
  final bool active;

  CategoryItem({@required this.title, this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 21, 40, 21),
      child: Text(
        title,
        style: Theme.of(context).textTheme.subtitle2.copyWith(
            color:
                active ? Theme.of(context).colorScheme.secondary : Colors.grey),
      ),
    );
  }
}
