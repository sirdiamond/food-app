import 'package:flutter/material.dart';
import 'package:food/screens/shared/app-bar.dart';

class FoodDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  children: [
                    MyAppBar(showBackButton: true),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 300,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).colorScheme.surface,
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/image_1_big.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: 'Vegan salad bowl\n',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: 'With red tomato',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    .copyWith(color: Colors.grey[400]),
                              ),
                            ]),
                      ),
                      Text(
                        '\$20',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.only(right: 50),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Add to bag',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.trending_flat,
                                color: Theme.of(context).colorScheme.onSurface,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Icon(
                            Icons.shopping_basket,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
                              width: 25,
                              height: 25,
                              child: Text(
                                '0',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontWeight: FontWeight.bold),
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.background,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
