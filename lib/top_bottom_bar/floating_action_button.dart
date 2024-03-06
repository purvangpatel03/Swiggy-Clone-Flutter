import 'package:flutter/material.dart';
import 'package:swiggy_clone/styling/text_style.dart';

class MyFloatingActionButton extends StatelessWidget {
  ValueChanged<int> clickOnFloatingAction;
  MyFloatingActionButton({super.key, required this.clickOnFloatingAction});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        clickOnFloatingAction(0);
      },
      tooltip: 'Back button',
      icon: const Icon(Icons.arrow_back,
      size: 20,
      color: Color.fromRGBO(217, 87, 4, 1.0),
      ),
      label: Text(
        'Back',
        style: tNunito18(
            textColor: const Color.fromRGBO(217, 87, 4, 1.0),
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
