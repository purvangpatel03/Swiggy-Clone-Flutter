import 'package:flutter/material.dart';
import 'package:swiggy_clone/pages/food.dart';
import 'package:swiggy_clone/pages/instamart.dart';

final pages = [
  const Food(),
  const Instamart(),
  const Food(),
  const Instamart(),
];

final ThemeData myTheme = ThemeData(

  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    //elevation: 8,
    shadowColor: Colors.grey,
  ),


  drawerTheme: const DrawerThemeData(
    width: double.maxFinite,
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    extendedIconLabelSpacing: 4,
    foregroundColor: Colors.orange,
    backgroundColor: Colors.white70,
    elevation: 4,
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white38,
    elevation: 16,
    selectedItemColor: Color.fromRGBO(241, 123, 58, 1.0),
  ),


  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 35, fontWeight: FontWeight.w700, fontFamily: 'Nunito'),
    displayMedium: TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Nunito'),
    displaySmall: TextStyle(
        fontSize: 15, fontWeight: FontWeight.w400, fontFamily: 'Nunito'),
  ),

  fontFamily: 'Nunito',
  scaffoldBackgroundColor: Colors.white,
  brightness: Brightness.light,

  // colorScheme: ColorScheme(
  //   brightness: Brightness.light,
  //   primary: Color.fromRGBO(0, 48, 192, 1.0),
  //   onPrimary: Color.fromRGBO(245, 225, 142, 1.0),
  //   secondary: Color.fromRGBO(255, 66, 139, 1.0),
  //   onSecondary: Color.fromRGBO(255, 193, 5, 1.0),
  //   error: Color.fromRGBO(238, 17, 5, 1.0),
  //   onError: Color.fromRGBO(107, 6, 6, 1.0),
  //   background: Color.fromRGBO(79, 65, 11, 1.0),
  //   onBackground: Color.fromRGBO(82, 229, 255, 1.0),
  //   surface: Color.fromRGBO(46, 203, 119, 1.0),
  //   onSurface: Color.fromRGBO(121, 8, 178, 1.0),
  // ),

);

final drawerTitle = [
  'My Account',
  'Addresses',
  'Payments & Refunds',
  'Swiggy Money & Gift Cards',
  'Refer & Earn Program',
  'Help'
];

final drawerSubTitle = [
  'Favourites, Hidden restaurants & settings',
  'Share, Edit & Add New Addresses',
  'Refund Status & Payment Modes',
  'Account balance, Gift cards & Transaction History',
  'Refer friends & earn upto Rs.2500 cashback on Swiggy',
  'FAQs & Links'
];

final bottomIcons = [
  const Icon(Icons.home_outlined),
  const Icon(Icons.food_bank_outlined),
  const Icon(Icons.shopping_bag_outlined),
  const Icon(Icons.dinner_dining_outlined),
  const Icon(Icons.credit_card_outlined)
];

final bottomIconsActive = [
  const Icon(Icons.home),
  const Icon(Icons.food_bank),
  const Icon(Icons.shopping_bag),
  const Icon(Icons.dinner_dining),
  const Icon(Icons.credit_card),
];

final bottomLabels = [
  'Swiggy',
  'Food',
  'Instamart',
  'Dineout',
  'Credit Card',
];

final bodyMainLabel = [
  'FOOD DELIVERY',
  'INSTAMART',
  'DINEOUT',
  'GENIE',
];


final bodySubLabel = [
  'FROM RESTAURANTS',
  'INSTANT GROCERY',
  'EAT OUT & SAVE MORE',
  'PICK-UP & DROP',
];

final bodyImages = [
  'assets/images/home_page/food_delivery.png',
  'assets/images/home_page/instamart.png',
  'assets/images/home_page/dineout.png',
  'assets/images/home_page/genie.png'
];

final bodyListUpper = [
  'LAUGHTER AND GOURMET FEST',
  'ONE MEMBERSHIP PRIVILEGES',
  'EASIEST WAY TO',
];

final bodyListMiddle = [
  'Zakir Khan Live',
  '30% off on cinepolis\nmovie tickets',
  'Refer And Earn!',
];

final bodyListLast = [
  '4th February\nSavanna Party Lawn,\nAhmedabad',
  'Offer valid on all days\nUse code: ONEMOVIE30',
  'Earn Rs.50 for each referral,\nand enjoy up to Rs.2500\nSwiggy Money.',
];

final bodyListButtonText = ['Book Now', 'Know More', 'Refer Now'];

final listColor = [
  const Color.fromRGBO(75, 33, 210, 1.0),
  const Color.fromRGBO(204, 5, 22, 1.0),
  const Color.fromRGBO(0, 111, 166, 1.0),
];

final instaBodyListUpper = [
  'Rice\nCarnival!',
  'Local\nFavourites!',
  'Korean\nMeal Fest!',
  'Clean & Inviting\nHomes!',
  'Fuel Your Fitness\nWith Protien',
];

final instaBodyListLast = [
  'Celebration of variety,\nflavours & choices',
  'Up to 50% OFF on regional,\ngood quality staples',
  'Indulge in culinary delight\nwith Korean food',
  'Up to 35% OFF on home\n& bathroom cleaning items.',
  'Up to 30% OFF on healthy\nprotien powders'
];

final instaBodyListButtonText = [
  'SHOP NOW',
  'BUY NOW',
  'ORDER NOW',
  'SHOP NOW',
  'SHOP NOW'
];

final instaListGradientColor = [
  [const Color.fromRGBO(176, 15, 60, 1.0), const Color.fromRGBO(206, 96, 115, 1.0)],
  [const Color.fromRGBO(5, 159, 68, 1.0), const Color.fromRGBO(108, 176, 127, 1.0)],
  [const Color.fromRGBO(63, 128, 22, 1.0), const Color.fromRGBO(134, 175, 108, 1.0)],
  [const Color.fromRGBO(108, 98, 85, 1.0), const Color.fromRGBO(173, 161, 147, 1.0)],
  [const Color.fromRGBO(0, 105, 136, 1.0), const Color.fromRGBO(91, 153, 171, 1.0)],
];

final instaItemsBrand = [
  'Bingo',
  'Amul',
  'Kwality Walls',
  'Amul',
  'Kurkure',
  'Parle',
  'Madhur'
];

final instaItemsImages = [
  'assets/images/instamart/bingo_mad_angels.png',
  'assets/images/instamart/amul_gold.png',
  'assets/images/instamart/kwality_walls_vanilla.png',
  'assets/images/instamart/amul_shakti.png',
  'assets/images/instamart/kurkure_solid_masti.png',
  'assets/images/instamart/parle_hideandseek.png',
  'assets/images/instamart/madhur_white_sugar.png'
];

final instaItemsName = [
  'Mad Angles Achhari Masti',
  'Gold Pasteurised Full Cream Milk',
  'Shameless Vanilla Tub',
  'Shakti Milk',
  'Solid Masti Masala Twisteez',
  'Hide & Seek Chocolate Chips',
  'Pure & Hygienic White Sugar'
];

final instaItemsPrice = [
  'Rs.100',
  'Rs.30',
  'Rs.135',
  'Rs.28',
  'Rs.20',
  'Rs.48',
  'Rs.123'
];

final instaGridNames = [
  'Fresh Vegetables',
  'Fresh Fruits',
  'Dairy, Bread and Eggs',
  'Atta, Rice and Dals',
  'Masalas and Dry Fruits',
  'Edible Oils and Ghee',
  'Munchies',
  'Sweet Tooth',
  'Cold Drinks',
  'Biscuits and Cakes',
  'Instant and Frozens',
  'Hygiene',
  'Meat and Seafood',
  'Cleaning Essentials',
  'Bath, Body and Hair',
  'Cereals and Breakfast',
  'Sauces and Spreads',
  'Tea, Coffee and More',
  'Paan Corner',
  'Home and Kitchen',
  'Office and Electricals',
  'Baby Care',
  'Pet Supplies',
  'Beauty and Grooming'
];

final instaGridImages = [
  'assets/images/instamart/grid_images/fresh_vegetables.jpg',
  'assets/images/instamart/grid_images/fresh_fruits.jpg',
  'assets/images/instamart/grid_images/dairy_bread_eggs.jpg',
  'assets/images/instamart/grid_images/atta_rice_daals.png',
  'assets/images/instamart/grid_images/masalas_dry_fruits.png',
  'assets/images/instamart/grid_images/oils-ghee.jpg',
  'assets/images/instamart/grid_images/munchies.jpg',
  'assets/images/instamart/grid_images/sweet_tooth.jpg',
  'assets/images/instamart/grid_images/cold_drinks.jpg',
  'assets/images/instamart/grid_images/biscuit_cakes.jpg',
  'assets/images/instamart/grid_images/instant_frozens.jpg',
  'assets/images/instamart/grid_images/hygiene.jpg',
  'assets/images/instamart/grid_images/meat_sea_food.jpg',
  'assets/images/instamart/grid_images/cleaning_essentials.jpg',
  'assets/images/instamart/grid_images/bath_body_hair.jpg',
  'assets/images/instamart/grid_images/cereals_breakfast.jpg',
  'assets/images/instamart/grid_images/sauces_spreads.jpg',
  'assets/images/instamart/grid_images/tea_coffee.jpg',
  'assets/images/instamart/grid_images/paan_corner.jpeg',
  'assets/images/instamart/grid_images/home_kitchen.jpg',
  'assets/images/instamart/grid_images/office_electricals.jpg',
  'assets/images/instamart/grid_images/baby_care.jpg',
  'assets/images/instamart/grid_images/pet_supplies.jpg',
  'assets/images/instamart/grid_images/beauty_grooming.jpg'
];

final foodListUpper = [
  'DELIVERY UNDER 30 MINS',
  'BEST OF BIR-YUMMY',
  "It's Snack Time",
  'MEALS AT Rs.159*',
  'GET 50% OFF',
  'MIN. Rs.100 OFF',
];

final foodListLast = [
  'Get your favourite dishes\ndelivered quickly',
  'Grab aromatic biryanis at\nmin.50% OFF.',
  'Get up to 60% OFF\n& more!',
  'Get delights from LunchBox\n-Meals And Thalis',
  "On treats from\nLa Pino'z Pizza.",
  "& more on yummy snacks.\nDon't miss out!",
];

final foodListColor = [
  [const Color.fromRGBO(110, 0, 31, 1.0),
    const Color.fromRGBO(189, 89, 107, 1.0)],
  [const Color.fromRGBO(122, 66, 34, 1.0),
    const Color.fromRGBO(150, 114, 92, 1.0) ],
  [const Color.fromRGBO(25, 80, 164, 1.0),
    const Color.fromRGBO(102, 134, 183, 1.0)],
  [const Color.fromRGBO(82, 128, 22, 1.0),
    const Color.fromRGBO(152, 190, 98, 1.0)],
  [const Color.fromRGBO(108, 98, 85, 1.0),
    const Color.fromRGBO(173, 161, 147, 1.0)],
];

final foodGridNames = [
  'GUILTFREE OPTIONS',
  'LOCAL MUST-TRYS',
  'GOURMET DELIGHT',
];

final foodGridImages = [
  'assets/images/food/grid_images/guiltfree_options.png',
  'assets/images/food/grid_images/local_must_try.png',
  'assets/images/food/grid_images/gourmet_delight.png'
];

final foodBigListupper = [
  "Domino's Pizza",
  "La Milano Pizzeria",
  "UBQ By Barbeque nation",
  "La Pino'z Pizza",
  "McDonald's",

];

final foodBigListMiddle = [
  "4.3 (1k+) -25 mins",
  "4.1 (1k+) -17 mins",
  "4.2 (5k+) -25 mins",
  "4.3 (1k+) -13 mins",
  "4.4 (10k+) -18 mins",
];

final foodBigListLast = [
  "Pizza, Italian, Pastas\nChanakyapuri -2.1 km",
  "Italian, Pizza, Pasta\nNaranpura -1.7 km",
  "North Indian Barbeque\nMemnagar -2.3 km",
  "Pizza, Pasta, Italian\nGurukul Road -1.4 km",
  "Burgers, Beverages\nMemnagar -2.3 km",
];

final foodBigListImageTextUpper = [
  "20% OFF",
  "Rs.125 OFF",
  "50% OFF",
  "50% OFF",
  "60% OFF",
];

final foodBigListImageTextLast = [
  "UPTO Rs.50",
  "ABOVE Rs.249",
  "UPTO Rs.100",
  "UPTO Rs.100",
  "ABOVE Rs.169"
];

final foodBigListImages = [
  'assets/images/food/restaurants_images/dominos_pizza.png',
  'assets/images/food/restaurants_images/la_milano_pizzeria.png',
  'assets/images/food/restaurants_images/ubq_barbequq_nation.png',
  'assets/images/food/restaurants_images/la_pinoz_pizza.png',
  'assets/images/food/restaurants_images/mc_donalds.png'
];

