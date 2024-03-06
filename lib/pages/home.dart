import 'package:flutter/material.dart';
import 'package:swiggy_clone/pages/food.dart';
import 'package:swiggy_clone/pages/instamart.dart';
import 'package:swiggy_clone/pages/swiggy.dart';
import 'package:swiggy_clone/top_bottom_bar/bottombar.dart';
import 'package:swiggy_clone/top_bottom_bar/drawer.dart';
import 'package:swiggy_clone/top_bottom_bar/floating_action_button.dart';
import '../top_bottom_bar/appbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(clickOnONE: (index){
        setState(() {
          currentIndex = index;
        });
      }),
      bottomNavigationBar: MyBottomBar(
        bottomIndex: currentIndex,
        bottomMenuChanged: (index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
      endDrawer: const MyDrawer(),
      body: _buildBody(),
      floatingActionButton: _floatingActionButton(),
    );
  }

  _buildBody(){
    switch(currentIndex){
      case 1:
        return const Food();
      case 2:
        return const Instamart();
      case 3:
        return const Food();
      case 4:
        return const Instamart();
      default:
        return Swiggy(clickOnGridItem: (value) =>
          setState(() {
            currentIndex = value;
          }),);
    }
  }

  _floatingActionButton(){
    switch(currentIndex){
      case 0 :
        return null;
      default:
        return MyFloatingActionButton(
          clickOnFloatingAction: (value) {
            setState(() {
              currentIndex = value;
            });
          },
        );
    }
  }
}
