import 'package:flutter/material.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class RandomFoods extends StatelessWidget {
  const RandomFoods({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardController _cardController = CardController();

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Forsy'),
            backgroundColor: Colors.amber,
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SwipeableCardsSection(
                  cardController: _cardController,
                  context: context,
                  //add the first 3 cards (widgets)
                  items: [
                    Card(
                      child: Text('"First card"'),
                      color: Colors.red,
                    ),
                    Card(
                      child: Text('"2 card"'),
                      color: Colors.blue,
                    ),
                    Card(
                      child: Text('"3 card"'),
                      color: Colors.green,
                    ),
                  ],
                  //Get card swipe event callbacks
                  onCardSwiped: (dir, index, widget) {
                    //Add the next card using _cardController
                    _cardController.addItem(
                      Card(
                        child: Text('"Next Card"'),
                        color: Colors.yellow,
                      ),
                    );

                    //Take action on the swiped widget based on the direction of swipe
                  },
                  //
                  enableSwipeUp: true,
                  enableSwipeDown: false,
                ),
              ] //other children
              )),
    );
  }
}
