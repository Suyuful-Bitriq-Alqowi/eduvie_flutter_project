import 'package:eduvie_movie/widget/color.dart';
import 'package:eduvie_movie/widget/img.dart';
import 'package:eduvie_movie/widget/text.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final VoidCallback onPressed;
  final String? imageUrl;
  final double? width;
  final FontWeight? fontWeight;

  const MyButton({
    Key? key,
    required this.buttonText,
    required this.buttonColor,
    required this.onPressed,
    this.imageUrl,
    this.width,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric( vertical: 10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (imageUrl != null)
              MyImg(
                imageUrl: imageUrl!,
                width: 25,
                height: 25,
              ),
            if (imageUrl != null) const SizedBox(width: 5),
            MyTxt( // Replace Text with MyTxt
              text: buttonText,
              fontSize: 16,
              textColor: whiteColor,
              fontWeight: fontWeight ?? FontWeight.normal,
            ),
          ],
        ),
      ),
    );
  }
}
