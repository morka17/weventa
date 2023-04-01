import 'package:flutter/material.dart';

import '../../_core/themes/app_colors.dart';
import '../../_core/utils/image_icon.dart';

class LandingHeader extends StatelessWidget {
  const LandingHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.black_color_2,
        image: const DecorationImage(
          image: AssetImage(AppImageIcons.kellySikkema),
          fit: BoxFit.fill,
        ),
      ),
      constraints: const BoxConstraints(
        minWidth: double.infinity,
        //  minHeight: size.width < 1000 ? 400 : 450,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 50,
          bottom: 50,
          left: size.width < 700 ? 30 : 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: const BoxConstraints(
                maxWidth: 600,
              ),
              // height: 180,
              child: SelectableText(
                "All-in-one E-commerce store to sell your products or services globally",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              constraints: const BoxConstraints(
                maxWidth: 600,
              ),
              //height: 140,
              child: SelectableText(
                "Thrive in the world’s most established affiliate networking platform designed to help you achieve intelligent, scalable, and sustainable growth in your business.",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontFamily: "Montserrat"),
              ),
            ),
            const SizedBox(height: 25),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                backgroundColor: AppColors.brand_colors_primary,
              ),
              child: Text(
                "Explore",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
