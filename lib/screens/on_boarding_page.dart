import 'package:flutter/material.dart';
import 'package:hack_team_flutter_app/widgets/on_boarding_page_view.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return Scaffold(
      // body: Container(
      //   child: IntroductionScreen(
      //     showSkipButton: true,
      //     skip: const Text('Skip'),
      //     next: const Icon(Icons.arrow_forward),
      //     done:
      //         const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      //     pages: [
      //       PageViewModel(
      //         title: "Добро пожаловать \nв E-Legion Desck!",
      //         body: "",
      //         image: Image.asset('assets/images/a1.png'),
      //         decoration: pageDecoration,
      //       ),
      //       PageViewModel(
      //         title: "Онбординг\nв команду E-Legion",
      //         body: "",
      //         image: Image.asset('assets/images/a2.png'),
      //         decoration: pageDecoration,
      //       ),
      //       PageViewModel(
      //         title: "Отслеживание\nсвоих задач",
      //         body: "",
      //         image: Image.asset('assets/images/a3.png'),
      //         decoration: pageDecoration,
      //       ),
      //       PageViewModel(
      //         title: "Новости\nи события команды",
      //         body: "",
      //         image: Image.asset('assets/images/a4.png'),
      //         decoration: pageDecoration,
      //       ),
      //     ],
      //     onDone: () {},
      //   ),
      // ),
      body: OnBoardingPageView(),
    );
  }
}
