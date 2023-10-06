import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yep_songer/themes/colors/customcolors.dart';

SnackBar customSnackBar(
    {required text,
    required type,
    iconPath = "",
    duration = 4,
    isFixed = false}) {
  bool icon = true;
  if (iconPath == "") {
    icon = false;
  }
  if (type == "success") {
    if (icon == true) {
      return SnackBar(
        duration: Duration(seconds: duration),
        behavior: isFixed ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(50))),
                child: Center(
                  child: SvgPicture.asset(
                    iconPath,
                    width: 20,
                    color: Colors.white,
                  ),
                )),
            const SizedBox(width: 10),
            Text(text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )).fontFamily)),
          ],
        ),
        backgroundColor: CustomColors.greenLighten,
        elevation: 15,
      );
    } else {
      return SnackBar(
        duration: Duration(seconds: duration),
        behavior: isFixed ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )).fontFamily)),
          ],
        ),
        backgroundColor: CustomColors.greenLighten,
        elevation: 15,
      );
    }
  } else if (type == "error") {
    if (icon == true) {
      return SnackBar(
        duration: Duration(seconds: duration),
        behavior: isFixed ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(50))),
                child: Center(
                  child: SvgPicture.asset(
                    iconPath,
                    width: 20,
                    color: Colors.white,
                  ),
                )),
            Text(text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )).fontFamily)),
          ],
        ),
        backgroundColor: Colors.red,
        elevation: 15,
      );
    } else {
      return SnackBar(
        duration: Duration(seconds: duration),
        behavior: isFixed ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )).fontFamily)),
          ],
        ),
        backgroundColor: Colors.red,
        elevation: 15,
      );
    }
  } else if (type == "info") {
    if (icon == true) {
      return SnackBar(
        duration: Duration(seconds: duration),
        behavior: isFixed ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(50))),
                child: Center(
                  child: SvgPicture.asset(
                    iconPath,
                    width: 20,
                    color: Colors.white,
                  ),
                )),
            Text(text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )).fontFamily)),
          ],
        ),
        backgroundColor: CustomColors.blue,
        elevation: 15,
      );
    } else {
      return SnackBar(
        duration: Duration(seconds: duration),
        behavior: isFixed ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )).fontFamily)),
          ],
        ),
        backgroundColor: CustomColors.blue,
        elevation: 15,
      );
    }
  }
  return SnackBar(
    duration: Duration(seconds: duration),
    behavior: isFixed ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
    content: Text(text),
    backgroundColor: Colors.blue,
    elevation: 15,
  );
}
