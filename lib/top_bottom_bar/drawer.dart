import 'package:flutter/material.dart';
import '../styling/themes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Drawer(
      child: Column(
        children: [
          Container(
            height: screenHeight * 0.1659891,
            width: double.maxFinite,
            color: Color.fromRGBO(124, 0, 0, 1.0),
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.04742547,),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,right: 8,left: 8),
                  child: Row(
                    children: [
                      const Text(
                        'PURVANG SUVAGIYA',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          overflow: TextOverflow.ellipsis,
                          fontSize: 24,
                          letterSpacing: 0.8,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Kanit',
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'EDIT',
                          style: TextStyle(
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                            fontSize: 20,
                            letterSpacing: 0.4,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Kanit',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0,right: 8,left: 8),
                  child: Row(
                    children: [
                       Text(
                        '+91-9408611130',
                        style: TextStyle(
                          color: Color.fromRGBO(201, 201, 201, 1.0),
                          overflow: TextOverflow.ellipsis,
                          fontSize: 16,
                          letterSpacing: 0.8,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Nunito',
                        ),
                      ),
                       SizedBox(width: 10,),
                       Text(
                        'purvangsuvagiya@gmail.com',
                        style: TextStyle(
                          color: Color.fromRGBO(201, 201, 201, 1.0),
                          overflow: TextOverflow.ellipsis,
                          fontSize: 16,
                          letterSpacing: 0.8,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.71138211,
            width: double.maxFinite,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      drawerTitle[index],
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 20,
                        letterSpacing: 0.3,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Nunito',
                      ),
                    ),
                    subtitle: Text(
                      drawerSubTitle[index],
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 14,
                        letterSpacing: 0.3,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                      indent: 12,
                      endIndent: 12,
                      height: screenHeight * 0.02845,
                      thickness: 2,
                      color: Colors.black,
                    ),
                itemCount: drawerTitle.length),
          ),
        ],
      ),
    );
  }
}
