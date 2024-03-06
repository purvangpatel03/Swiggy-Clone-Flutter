import 'package:flutter/material.dart';
import '../styling/text_style.dart';
import '../styling/themes.dart';


class Swiggy extends StatelessWidget {
  ValueChanged<int> clickOnGridItem;
  Swiggy({super.key, required this.clickOnGridItem});


  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * 0.03557,
          ),
          _hungryForDinner,
          SizedBox(
            height: screenHeight * 0.03557,
          ),
      SizedBox(
        height: screenHeight * 0.52168,
        child: GridView.count(
          crossAxisCount: 2,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
            bodyMainLabel.length,
                (index) => Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  clickOnGridItem(index+1);
                },
                child: PhysicalModel(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(239, 239, 239, 1.0),
                  elevation: 10,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bodyMainLabel[index],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: tKanit20(fontWeight: FontWeight.w700,)
                              .copyWith(letterSpacing: 0.1),
                        ),
                        Text(
                          bodySubLabel[index],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: tKanit14(
                            textColor:
                            const Color.fromRGBO(147, 147, 147, 1.0),
                          ).copyWith(letterSpacing: -0.1),
                        ),
                        const Spacer(),
                        Align(
                          alignment: const Alignment(-0.1,0),
                          child: Image(
                            isAntiAlias: true,
                            height: screenHeight * 0.11856368,
                            image: AssetImage(bodyImages[index]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
          Center(
            child: Text(
              'Featured For You',
              style: tKanit20(
                textColor: const Color.fromRGBO(147, 147, 147, 1.0),
              ).copyWith(
                letterSpacing: 3,
              ),
            ),
          ),
          _list(context),
          SizedBox(
            height: screenHeight * 0.124254,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
              'Live\nit up!',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color.fromRGBO(147, 146, 146, 1.0),
                fontSize: 100,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.2,
          ),
        ],
      ),
    );
  }
}

Widget get _hungryForDinner => RichText(
  text: TextSpan(
    style: tKanit40(
      fontWeight: FontWeight.w900,
      textColor: const Color.fromRGBO(255, 107, 5, 1.0),
    ).copyWith(
      letterSpacing: 1.4,
    ),
    children: <TextSpan> [
      const TextSpan(
        text:' Hungry F'
      ),
      TextSpan(
        text: 'or dinner?',
        style: tKanit40(
          fontWeight: FontWeight.w300,
          textColor: const Color.fromRGBO(255, 107, 5, 1.0),
        ).copyWith(
          letterSpacing: -1.6,
        ),
      )
    ],
  ),
);

Widget _list(BuildContext context){
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  return SizedBox(
    height: screenHeight * 0.3179783199,
    child: ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: PhysicalModel(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(232, 232, 232, 1.0),
            elevation: 12,
            child: Container(
              height: screenHeight * 0.3179783199,
              width: screenWidth * 0.875,
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bodyListUpper[index],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: tNunito16(
                      textColor: listColor[index],
                      fontWeight: FontWeight.w500,
                    ).copyWith(
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    bodyListMiddle[index],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: tNunito24(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    bodyListLast[index],
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: tNunito18(
                      textColor:
                      const Color.fromRGBO(131, 131, 131, 1.0),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size.fromWidth(double.maxFinite),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: listColor[index],
                    ),
                    onPressed: () {},
                    child: Text(
                      bodyListButtonText[index],
                      style: tNunito18(
                        textColor: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: 3,
      padding: const EdgeInsets.all(8),
      scrollDirection: Axis.horizontal,
    ),
  );
}
