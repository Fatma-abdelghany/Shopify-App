

import 'package:flutter/material.dart';
import 'package:shoppify_app/utils/constants/colors_constants.dart';
import 'package:shoppify_app/utils/constants/strings_constants.dart';

class CustomButton extends StatelessWidget {
   CustomButton({required this.text,required this.myBtnPressed,super.key});

  String text;
   Function()? myBtnPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:myBtnPressed,
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            elevation: 20,
            backgroundColor: ColorsConstants.buttonColor,
            shadowColor: Theme.of(context).primaryColor,
            minimumSize: const Size.fromHeight(60),
          ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            SizedBox(),
        Text(text,),
            Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: ColorsConstants.buttonColor,
                      size: 24.0,
                    ),
                  ),

      ]),
    );
    // return Directionality(
    //   textDirection: TextDirection.rtl,
    //   child: ElevatedButton.icon(
    //     onPressed:myBtnPressed,
    //     style: ElevatedButton.styleFrom(
    //       shape: const StadiumBorder(),
    //       elevation: 20,
    //       backgroundColor: ColorsConstants.buttonColor,
    //       shadowColor: Theme.of(context).primaryColor,
    //       minimumSize: const Size.fromHeight(60),
    //     ),
    //     icon:Container(
    //       width: 30,
    //       height: 30,
    //       decoration: BoxDecoration(
    //         shape: BoxShape.circle,
    //         color: Colors.white,
    //       ),
    //       child: Icon(
    //         Icons.keyboard_arrow_right,
    //         color: ColorsConstants.buttonColor,
    //       ),
    //     ),
    //     label:  Text(text,      style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
    //     ),
    //   ),
    // );
  }
}
