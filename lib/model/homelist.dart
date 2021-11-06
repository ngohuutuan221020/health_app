import 'package:health/design_course/covid_19.dart';
import 'package:health/fitness_app/fitness_app_home_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:health/introduction_animation/introduction_animation_screen.dart';
import 'package:health/screens/dmc.dart';

class HomeList {
  HomeList({

    this.navigateScreen,
    this.imagePath = '',
  });

  Widget? navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'assets/fitness_app/suckhoe.jpg',
      navigateScreen: FitnessAppHomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/images/chart.jpg',
      navigateScreen: Dmc(),
    ),
    HomeList(
      imagePath: 'assets/design_course/covid.jpg',
      navigateScreen: Covid19(),
    ),
    HomeList(
      imagePath: 'assets/introduction_animation/thugian.jpg',
      navigateScreen: IntroductionAnimationScreen(),
    ),
  ];
}
