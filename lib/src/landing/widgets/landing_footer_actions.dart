import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../_core/themes/app_colors.dart';
import '../../_core/utils/image_icon.dart';

class LandingAction {
  final String name;
  final String id;
  LandingAction({
    required this.name,
    required this.id,
  });
}

class FooterCallsToAction extends StatelessWidget {
  FooterCallsToAction({
    super.key,
  });

  final List<LandingAction> leftActions = [
    LandingAction(name: "Terms and conditions", id: "L01"),
    LandingAction(name: "Contact us", id: "L02"),
    LandingAction(name: "Privacy policy", id: "L03")
  ];

  final List<LandingAction> rightActions = [
    LandingAction(name: "How it works", id: "L01"),
    LandingAction(name: "FAQs", id: "L02"),
    LandingAction(name: "About us", id: "L03")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      constraints: const BoxConstraints(minHeight: 250),
      color: const Color(0XFF141446),
      child: LayoutBuilder(
        builder: (context, contraints) {
          if (contraints.maxWidth > 750) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WEVENTA",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Make sales easy",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    const SizedBox(height: 70),
                    SocialHandles(),
                  ],
                ),
                Actions(rightActions: rightActions, leftActions: leftActions)
              ],
            );
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Text(
                "WEVENTA",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(height: 10),
              Text(
                "Make sales easy",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RightActionsContent(rightActions: rightActions),
                  // const SizedBox(width: 20),
                  // VERTICAL BAR DIMACATOR
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2.0),
                    width: 2,
                    height: 165,
                    color: AppColors.brand_colors_secondary,
                  ),
                  // const SizedBox(width: 20),
                  // RIGHT FOOTER CALL TO ACTION
                  LeftActionContent(leftActions: leftActions),
                ],
              ),
              const SizedBox(height: 35),
              SocialHandles(),
              const SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}

class SocialHandles extends StatelessWidget {
  SocialHandles({
    super.key,
  });

  final List<String> handles = [
    AppImageIcons.instagram,
    AppImageIcons.facebook,
    AppImageIcons.twitter,
    AppImageIcons.youtube,
    AppImageIcons.tweetBird
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      //  color: Colors.green,
      height: 25,
      width: 230,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var handle in handles)
            Container(
              height: 32,
              width: 32,
              color: AppColors.grey_color_4,
              child: Image.asset(
                handle,
                fit: BoxFit.fill,
              ),
            ),
        ],
      ),
    );
  }
}

class Actions extends StatelessWidget {
  const Actions({
    super.key,
    required this.rightActions,
    required this.leftActions,
  });

  final List<LandingAction> rightActions;
  final List<LandingAction> leftActions;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RightActionsContent(rightActions: rightActions),
        const SizedBox(width: 40),
        // VERTICAL BAR DIMACATOR
        Container(
          width: 2,
          height: 200,
          color: AppColors.brand_colors_secondary,
        ),
        const SizedBox(width: 40),
        // RIGHT FOOTER CALL TO ACTION
        LeftActionContent(leftActions: leftActions),
        const SizedBox(width: 10),
      ],
    );
  }
}

class RightActionsContent extends StatelessWidget {
  const RightActionsContent({
    super.key,
    required this.rightActions,
  });

  final List<LandingAction> rightActions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var action in rightActions)
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: RichText(
              text: TextSpan(
                text: action.name,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                    ),
                recognizer: TapGestureRecognizer()..onTap = () => {},
              ),
            ),
          ),
      ],
    );
  }
}

class LeftActionContent extends StatelessWidget {
  const LeftActionContent({
    super.key,
    required this.leftActions,
  });

  final List<LandingAction> leftActions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var action in leftActions)
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: RichText(
              text: TextSpan(
                text: action.name,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                    ),
                recognizer: TapGestureRecognizer()..onTap = () => {},
              ),
            ),
          ),
      ],
    );
  }
}
