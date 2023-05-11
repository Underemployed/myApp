import 'package:flutter/material.dart';

import '../../constants.dart';

class Sorting extends StatelessWidget {
  const Sorting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //space between widgets
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            height: 20,
          ),
        ),
      ],
    );
  }
}
