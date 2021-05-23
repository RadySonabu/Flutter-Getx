import 'package:app/views/home/homepage.dart';
import 'package:app/views/public/button.dart';
import 'package:app/views/public/random_foods.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateFlavorProfile extends StatelessWidget {
  const CreateFlavorProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Forsy'),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text('Select flavor of your choice'),
              Wrap(
                spacing: 10,
                children: [
                  SelectButton(text: 'Salty'),
                  SelectButton(text: 'Sweet'),
                  SelectButton(text: 'Sour'),
                  SelectButton(text: 'Bitter'),
                  SelectButton(text: 'Savory'),
                  SelectButton(text: 'Spicy'),
                ],
              ),
              SizedBox(height: 40, child: Divider(thickness: 2)),
              Text('Select the cuisine of your choice'),
              Wrap(
                spacing: 10,
                children: [
                  SelectButton(text: 'Chinese'),
                  SelectButton(text: 'Japanese'),
                  SelectButton(text: 'French'),
                  SelectButton(text: 'Filipino'),
                  SelectButton(text: 'Others'),
                ],
              ),
              SizedBox(height: 40, child: Divider(thickness: 2)),
              Text('Select the sensation of your choice'),
              Wrap(
                spacing: 10,
                children: [
                  SelectButton(text: 'Hot'),
                  SelectButton(text: 'Cold'),
                ],
              ),
              SizedBox(height: 40, child: Divider(thickness: 2)),
              Text('Select the food texture of your choice'),
              Wrap(
                spacing: 10,
                children: [
                  SelectButton(text: 'Soupy'),
                  SelectButton(text: 'Dry'),
                  SelectButton(text: 'Oily'),
                  SelectButton(text: 'Fried'),
                  SelectButton(text: 'Slimy'),
                ],
              ),
              SizedBox(height: 40, child: Divider(thickness: 2)),
              ElevatedButton(
                  onPressed: () {
                    Get.off(RandomFoods());
                  },
                  child: Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}
