import 'package:flutter/material.dart';
import '../styling/themes.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Instamart extends StatelessWidget {
  const Instamart({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              height: screenHeight * 0.33197,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: PhysicalModel(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white,
                      elevation: 12,
                      child: Container(
                        width: screenWidth * 0.875,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: instaListGradientColor[index],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              instaBodyListUpper[index],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Kanit',
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              instaBodyListLast[index],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Kanit',
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                foregroundColor: Colors.yellow,
                              ),
                              onPressed: () {},
                              child: GradientText(
                                instaBodyListButtonText[index],
                                colors: instaListGradientColor[index],
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
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Top picks for you',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Nunito',
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'based on what is popular around you',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Nunito',
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style:
                          TextStyle(color: Color.fromRGBO(255, 138, 63, 1.0)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.3594,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: screenWidth * 0.38889,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: screenHeight * 0.1897,
                          width: screenHeight * 0.33197,
                          padding: const EdgeInsets.all(4),
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: const Color.fromRGBO(201, 201, 201, 1.0),
                                width: 1),
                          ),
                          child: Image(
                            image: AssetImage(instaItemsImages[index]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                instaItemsBrand[index],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Color.fromRGBO(133, 133, 133, 1.0),
                                  fontSize: 16,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Nunito',
                                ),
                              ),
                              Text(
                                instaItemsName[index],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1.0),
                                  fontSize: 16,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Nunito',
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                instaItemsPrice[index],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1.0),
                                  fontSize: 16,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Nunito',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: instaItemsBrand.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const Text(
              '  Shop by category',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                fontFamily: 'Nunito',
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: screenHeight * 1.12,
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                childAspectRatio: 0.65,
                children: List.generate(
                  instaGridNames.length,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: double.maxFinite,
                        height: screenHeight * 0.104336,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(236, 237, 246, 1.0),
                              Color.fromRGBO(229, 236, 252, 1.0),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey,
                        ),
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.all(4),
                        child: Image(
                          image: AssetImage(instaGridImages[index]),
                        ),
                      ),
                      Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        instaGridNames[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Nunito',
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
