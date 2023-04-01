import 'package:flutter/material.dart';
import 'package:weventa/src/_core/themes/app_colors.dart';

class LandingDrawerContent extends StatelessWidget {
  const LandingDrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              width: double.infinity,
              height: 40,
              child: IconButton(
                hoverColor: AppColors.grey_color_2,
                color: AppColors.grey_color_5,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
