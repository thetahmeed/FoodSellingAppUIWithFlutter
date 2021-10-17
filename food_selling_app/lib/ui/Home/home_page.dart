import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_selling_app/constant/color_code_coonverter.dart';
import 'package:food_selling_app/constant/colors.dart';
import 'Components/ListViews/HorizontalListView.dart';
import 'Components/ListViews/VerticalListView.dart';
import 'Components/SectionTitle/AllRestaurentsTitle.dart';
import 'Components/SectionTitle/CategoryTitle.dart';
import 'Components/SectionsModel/AllRestaurantItemModel.dart';
import 'Components/SectionsModel/CategoryItemModel.dart';
import 'Components/SectionsModel/FoodCampaignItemModel.dart';
import 'Components/SectionsModel/NewOnAppItemModel.dart';
import 'Components/SectionsModel/PolularItemModel.dart';
import 'Components/SectionsModel/PopularRestaurantsItemModel.dart';
import 'Components/Top/TopLocationText.dart';
import 'Components/Top/TopSearchBox.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  int _current = 0;
  final CarouselController _controller = CarouselController();

  // Dummy images for image slider
  List imgList = [
    'https://png.pngtree.com/background/20210710/original/pngtree-black-meat-western-food-banner-background-picture-image_1013905.jpg',
    'https://png.pngtree.com/background/20210710/original/pngtree-black-fresh-literary-fish-food-banner-background-picture-image_1017060.jpg',
    'https://png.pngtree.com/background/20210710/original/pngtree-desktop-food-banner-picture-image_1016587.jpg',
    'https://png.pngtree.com/background/20210711/original/pngtree-black-atmosphere-simple-meal-food-food-banner-picture-image_1084037.jpg',
    'https://png.pngtree.com/background/20210710/original/pngtree-breakfast-bread-simple-small-fresh-food-e-commerce-food-banner-picture-image_1008359.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(backgroundColor),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              TopLocationText(),
              TopSearchBox(),
              SizedBox(height: 18),
              //
              imageSlider(),
              imageSliderIndicator(context),
              //
              CategoryTitle(title: 'Categories', click: () {}),
              HorizontalListview(height: 100, c: CategoryItemModel()),
              //
              CategoryTitle(title: 'Popular Food Nearby', click: () {}),
              HorizontalListview(height: 140, c: PolularItemModel()),
              //
              CategoryTitle(title: 'Food Campaign', click: () {}),
              HorizontalListview(height: 290, c: FoodCampaignItemModel()),
              //
              CategoryTitle(title: 'Popular Restaurants', click: () {}),
              HorizontalListview(height: 270, c: PopularRestaurantsItemModel()),
              //
              CategoryTitle(title: 'New on App', click: () {}),
              HorizontalListview(height: 270, c: NewOnAppItemModel()),
              //
              AllRestaurentsTitle(),
              VerticalListView(c: AllRestaurantItemModel()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  // Image slider section

  CarouselSlider imageSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 80.0,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        },
      ),
      items: imgList.map((img) {
        return Builder(
          builder: (BuildContext context) {
            return singleImageSliderModel(context, img);
          },
        );
      }).toList(),
    );
  }

  Container singleImageSliderModel(BuildContext context, String img) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
          color: HexColor(primaryColor),
          borderRadius: BorderRadius.circular(10)),
      child: Image.network(img, fit: BoxFit.cover),
    );
  }

  Row imageSliderIndicator(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: imgList.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () => _controller.animateToPage(entry.key),
          child: Container(
            width: _current == entry.key ? 10 : 5,
            height: _current == entry.key ? 10 : 5,
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: (Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : HexColor(primaryColor))
                  .withOpacity(_current == entry.key ? 0.9 : 0.4),
            ),
          ),
        );
      }).toList(),
    );
  }

  // Bottom navigation bar section
  BottomAppBar bottomNavBar() {
    return BottomAppBar(
      child: SizedBox(
        height: 62,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 1),
            bottomNavBarItem(0, Icons.home_rounded),
            bottomNavBarItem(1, Icons.favorite_rounded),
            Container(
              height: 58,
              width: 58,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: HexColor(primaryColor),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            bottomNavBarItem(2, Icons.bookmark_rounded),
            bottomNavBarItem(3, Icons.menu_rounded),
            SizedBox(width: 1),
          ],
        ),
      ),
    );
  }

  IconButton bottomNavBarItem(int index, IconData icon) {
    return IconButton(
      onPressed: () {
        setState(() => selectedIndex = index);
      },
      icon: Icon(
        icon,
        color: selectedIndex == index
            ? HexColor(primaryColor)
            : HexColor(secondaryColor),
      ),
    );
  }
}
