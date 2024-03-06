import 'package:flutter/material.dart';
import '../styling/themes.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0,right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * 0.25,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: PhysicalModel(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white,
                      elevation: 12,
                      child: Container(
                        width: screenWidth * 0.87,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: foodListColor[index],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              foodListUpper[index],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Kanit',
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              foodListLast[index],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Kanit',
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize:
                                    Size(screenWidth * 0.435, screenHeight * 0.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                foregroundColor: Colors.yellow,
                              ),
                              onPressed: () {},
                              child: GradientText(
                                'ORDER NOW',
                                colors: foodListColor[index],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 16,
                                  letterSpacing: 0.3,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Nunito',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: instaBodyListUpper.length,
                padding: const EdgeInsets.only(bottom: 12),
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              height: screenHeight * 0.169,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                padding: const EdgeInsets.all(8),
                childAspectRatio: 1.12,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  foodGridNames.length,
                  (index) => PhysicalModel(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.white,
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 10, right: 10, left: 12, bottom: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            foodGridNames[index],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Color.fromRGBO(121, 121, 121, 1.0),
                              fontSize: 14,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Kanit',
                            ),
                          ),
                          Expanded(
                            child: Image(
                              image: AssetImage(
                                foodGridImages[index],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16,bottom: 8),
              child: Text(
                'TOP RATED NEAR YOU',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  fontSize: 16,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Kanit',
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 1.3135,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Container(
                            height: screenHeight * 0.2371,
                            width: screenWidth * 0.4131944,
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                fit: BoxFit.fitHeight,
                                colorBlendMode: BlendMode.hardLight,
                                color: const Color.fromRGBO(0, 0, 0, 0.15),
                                image: AssetImage(foodBigListImages[index],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24, bottom: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  foodBigListImageTextUpper[index],
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1.0),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Kanit',
                                  ),
                                ),
                                Text(
                                  foodBigListImageTextLast[index],
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(210, 210, 210, 1.0),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'Nunito',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Image(
                                  height: 16,
                                  width: 16,
                                  image: AssetImage(
                                      'assets/images/food/restaurants_images/pure_veg.png'),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Pure Veg',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 169, 48, 1.0),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.1,
                                    fontFamily: 'Nunito',
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              foodBigListupper[index],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1.0),
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                letterSpacing: -0.1,
                                fontFamily: 'Nunito',
                              ),
                            ),
                            Row(
                              children: [
                                const Image(
                                  height: 16,
                                  width: 16,
                                  image: AssetImage(
                                      'assets/images/food/restaurants_images/rating_star.png'),
                                ),
                                Text(
                                  foodBigListMiddle[index],
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(1, 3, 1, 1.0),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.2,
                                    fontFamily: 'Nunito',
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              foodBigListLast[index],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: const TextStyle(
                                color: Color.fromRGBO(98, 98, 98, 1.0),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.1,
                                fontFamily: 'Nunito',
                              ),
                            ),
                            Container(
                              height: screenHeight * 0.047425,
                              width: screenWidth * 0.4618,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(255, 255, 255, 1.0),
                                    Color.fromRGBO(255, 222, 214, 1.0),
                                  ],
                                ),
                              ),
                              child: Row(
                                children: [
                                  GradientText(
                                    '  FREE DELIVERY',
                                    gradientDirection: GradientDirection.btt,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                      letterSpacing: -0.3,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w900,
                                    ),
                                    colors: const [
                                      Color.fromRGBO(245, 192, 169, 1.0),
                                      Color.fromRGBO(255, 107, 5, 1.0),
                                      Color.fromRGBO(255, 35, 99, 1.0),
                                    ],
                                  ),
                                  const Spacer(),
                                  GradientText(
                                    'ONE    ',
                                    gradientDirection: GradientDirection.ttb,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                      letterSpacing: -0.3,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w900,
                                    ),
                                    colors: const [
                                      Color.fromRGBO(245, 192, 169, 1.0),
                                      Color.fromRGBO(255, 107, 5, 1.0),
                                      Color.fromRGBO(255, 35, 99, 1.0),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                physics: const NeverScrollableScrollPhysics(),
                itemCount: foodBigListupper.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
