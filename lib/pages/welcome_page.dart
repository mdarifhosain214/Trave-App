import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

import '../widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List image = [
    'images/welcome-one.png',
    'images/welcome-two.png',
    'images/welcome-three.png', 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: image.length,
          itemBuilder: (_, index) {
            return Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image[index]), fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trips"),
                        AppText(
                          text: "Mountain",
                          size: 30,
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          margin: EdgeInsets.zero,
                          width: 250,
                          child: AppText(
                            text:
                                'Mountain hike give you incredible sense off freedom along with endurance test.',
                            color: AppColors.textColor2,size: 15,
                          ),
                        ),
                        const SizedBox(height: 50,),
                        ResponsiveButton(width: 120,),
                      ],
                    ),
                    Column(
                      children: List.generate(image.length, (indexDots) => Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        height: index==indexDots?25:8,
                        width: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color:index==indexDots? AppColors.mainColor:AppColors.mainColor.withOpacity(0.3)
                        ),
                      )),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
