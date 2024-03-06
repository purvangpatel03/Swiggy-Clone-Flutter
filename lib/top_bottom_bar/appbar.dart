import 'package:flutter/material.dart';
import '../styling/themes.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  ValueChanged<int> clickOnONE;
  MyAppBar({super.key, required this.clickOnONE});

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return AppBar(
      surfaceTintColor: Colors.white,
      leading: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image(
                height: screenHeight * 0.05928184,
                width: screenWidth * 0.121527778,
                image: const AssetImage('assets/icons/navigation_appbar.png'),
              ),
              Text(
                'Street',
                style: myTheme.textTheme.displayMedium,
              ),
              DropdownButton(
                underline: const SizedBox(),
                items: const [],
                padding: const EdgeInsets.only(left: 3),
                icon: Image(
                    isAntiAlias: true,
                    color: Colors.grey,
                    height: screenHeight * 0.02964092,
                    width: screenWidth * 0.0607638,
                    image: const AssetImage('assets/icons/downward_arrow.png'),),
                iconSize: 40,
                onChanged: (value) => const Text('Nothing to show here'),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: screenWidth * 0.029167,
              ),
              const Text(
                'This is your current Location...',
                style: TextStyle(
                    color: Color.fromRGBO(138, 138, 138, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
      leadingWidth: double.infinity,
      toolbarHeight: screenHeight * 0.0948509,
      actions: [
        Tooltip(
          message: 'ONE Membership',
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 1.5,
              fixedSize: const Size(84, 0),
              padding: const EdgeInsets.all(0),
              shadowColor: Colors.black,
              side: const BorderSide(
                color: Color.fromRGBO(243, 114, 40, 1.0),
              ),
            ),
            onPressed: () {
              widget.clickOnONE(0);
            },
            child: GradientText(
              'ONE',
              style: const TextStyle(
                fontSize: 22.0,
                letterSpacing: 1,
                decorationThickness: 1,
                fontWeight: FontWeight.w900,
              ),
              colors: const [
                Color.fromRGBO(239, 178, 151, 1.0),
                Color.fromRGBO(255, 107, 5, 1.0),
                Color.fromRGBO(255, 35, 99, 1.0),
              ],
            ),
          ),
        ),
        Builder(
          builder: (BuildContext context) {
            return IconButton(
              padding: const EdgeInsets.all(0),
              tooltip: 'Account Info',
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              icon: Image(
                height: screenHeight * 0.0829945799,
                width: screenWidth * 0.1701389,
                image: const AssetImage('assets/icons/account_info.png'),
              ),
            );
          },
        ),
      ],
    );
  }


}
