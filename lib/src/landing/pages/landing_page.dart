import 'package:flutter/material.dart';
import 'package:weventa/src/_core/themes/app_colors.dart';

import '../../_core/utils/image_icon.dart';
import '../widgets/landing_drawer_content.dart';
import '../widgets/landing_footer_actions.dart';
import '../widgets/landing_header.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class LandingPage extends StatefulWidget {
  static const String id = "/";
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<String> navs = [
    "Physical products",
    "Digital products",
    "Affilates",
    "Vendors"
  ];

  List<String> partners = [
    AppImageIcons.paypal,
    AppImageIcons.stripe,
    AppImageIcons.slack,
    AppImageIcons.pay,
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        width: size.width,
        child: const LandingDrawerContent(),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: false,
        title: Row(
          children: [
            Container(
              height: 40,
              width: 44,
              // color: Colors.grey,
              child: Image.asset(
                AppImageIcons.weventaLogo,
              ),
            ),
            const SizedBox(width: 1),
            Container(
              height: 40,
              width: 122,
              // color: Colors.grey,
              child: Image.asset(
                AppImageIcons.weventaTextLogo,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        actions: [
          if (size.width > 1000)
            for (var nav in navs)
              Padding(
                padding: const EdgeInsets.only(right: 40, top: 20),
                child: MouseRegion(
                  onHover: (event) {
                    /// TODO: UPDATE THE TEXT FIELD
                  },
                  child: Text(
                    nav,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
          if (size.width > 1000)
            Padding(
              padding: const EdgeInsets.only(right: 30, bottom: 8, top: 10),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  minimumSize: const Size(122, 40),
                  // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  backgroundColor: const Color(0XFF626684B2),
                ),
                child: Text(
                  "SIGN IN",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
          if (size.width < 1000)
            Builder(builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu),
                iconSize: 30,
                color: AppColors.grey_color_1,
                hoverColor: AppColors.grey_color_5,
              );
            })
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const LandingHeader(),
              PartnersTile(partners: partners),
              Container(
                child: Column(
                  children: [
                    Container(
                      constraints: const BoxConstraints(
                        maxWidth: 700,
                        minHeight: 100,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: LayoutBuilder(builder: (context, contraint) {
                        if (contraint.maxWidth > 650) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Ready to enter into your world of limitless financial possibilities",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.w700),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  foregroundColor:
                                      AppColors.brand_colors_secondary,
                                  backgroundColor:
                                      AppColors.brand_colors_secondary,
                                  fixedSize: const Size(60, 35),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "I'm in",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ],
                          );
                        }
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 12),
                            Text(
                              "Ready to enter into your world of limitless financial possibilities.",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 10),
                            TextButton(
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                foregroundColor:
                                    AppColors.brand_colors_secondary,
                                backgroundColor:
                                    AppColors.brand_colors_secondary,
                                fixedSize: const Size(60, 35),
                              ),
                              onPressed: () {},
                              child: Text(
                                "I'm in",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                            const SizedBox(height: 20)
                          ],
                        );
                      }),
                    ),
                    FooterCallsToAction(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PartnersTile extends StatelessWidget {
  const PartnersTile({
    super.key,
    required this.partners,
  });

  final List<String> partners;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.brand_colors_secondary,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Our partners",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 40),
          Container(
              constraints: const BoxConstraints(maxWidth: 700),
              child: LayoutBuilder(builder: (context, contraints) {
                if (contraints.maxWidth > 450) {
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: partners.map((e) {
                        return Container(
                          margin: const EdgeInsets.only(right: 20, bottom: 10),
                          // color: Colors.black,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(e),
                            ),
                          ),
                          constraints: const BoxConstraints(
                            maxWidth: 80,
                          ),
                        );
                      }).toList());
                }
                return Wrap(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: partners.map((e) {
                  return Container(
                    margin: const EdgeInsets.only(right: 20, bottom: 10),
                    // color: Colors.black,
                    height: 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(e),
                      ),
                    ),
                    constraints: const BoxConstraints(
                      maxWidth: 80,
                    ),
                  );
                }).toList());
              })),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
