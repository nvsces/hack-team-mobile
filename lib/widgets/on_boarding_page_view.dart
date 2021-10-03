import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hack_team_flutter_app/injection_container.dart';
import 'package:hack_team_flutter_app/profile/presentation/widgets/button_app.dart';
import 'package:hack_team_flutter_app/routing/bloc/navigation_pages_bloc.dart';

class OnBoardingPageView extends StatefulWidget {
  OnBoardingPageView({Key? key}) : super(key: key);

  @override
  _OnBoardingPageViewState createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  final PageController _pageController = PageController(initialPage: 0);

  int _currentPage = 0;
  final _countPage = 3;

  bool isPreview = true;

  static const colors = [
    Color(0xff000000),
    Color(0xffff8f63),
    Color(0xffb22f42),
    // Color(0xff4d3d8a),
  ];

  List<Widget> viewPages = [];

  void onChangeValuePageController(int value) {
    setState(() {
      _currentPage = value;
    });
  }

  Widget _buildImage(String assetName) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(
        assetName,
        fit: BoxFit.contain,
        // width: 350,
        // height: 400,
        height: MediaQuery.of(context).size.height / 2,
      ),
    );
  }

  final bodyStyle = TextStyle(
    fontSize: 19.0,
    color: Colors.white,
  );
  final bodyTextWidth = 350.0;
  final textTitleStyle = TextStyle(
    fontSize: 34.0,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  void _onIntroEnd(context) {}

  Widget _toggleBtn(Widget btn, bool isShow) {
    return isShow
        ? btn
        : Opacity(opacity: 0.0, child: IgnorePointer(child: btn));
  }

  void animateToPage(int page) {
    _pageController.animateToPage(page,
        duration: Duration(milliseconds: 350), curve: Curves.easeIn);
  }

  void onTapNextBtn() {
    setState(() {
      _currentPage++;
      animateToPage(_currentPage);
    });
  }

  void onTapPreviousBtn() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage--;
        animateToPage(_currentPage);
      });
    }
  }

  Widget buildBtn({
    required String title,
    Function()? onTap,
    bool isShow = true,
  }) {
    return _toggleBtn(
      TextButton(
          onPressed: onTap,
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          )),
      isShow,
    );
  }

  Widget _buildBottomPanel() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(children: [
        Expanded(
          flex: 1,
          child: buildBtn(
            title: 'Previous',
            onTap: onTapPreviousBtn,
            isShow: (_currentPage > 0),
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
              child: DotsIndicator(
                  dotsCount: _countPage,
                  position: _currentPage.toDouble(),
                  onTap: (position) {
                    _pageController.animateToPage(position.toInt(),
                        duration: Duration(milliseconds: 350),
                        curve: Curves.easeIn);
                    setState(() {
                      _currentPage = position.toInt();
                    });
                  })),
        ),
        Expanded(
            flex: 1,
            child: !(_currentPage == (_countPage - 1))
                ? buildBtn(title: 'Next', onTap: onTapNextBtn, isShow: true)
                : buildBtn(title: 'Done', onTap: () => _onIntroEnd(context))),
      ]),
    );
  }

  Widget _buildPageView(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: PageView(
            controller: _pageController,
            onPageChanged: (value) => onChangeValuePageController(value),
            children: [
              _buildPageViewContainer(
                title: "Онбординг\nв команду E-Legion",
                image: _buildImage(
                  'assets/images/a2.png',
                ),
                child: TextButton(
                    onPressed: () {
                      sl<NavigationPagesBloc>()
                          .add(ToLoginNavigationPagesEvent());
                    },
                    child: Text('Пропустить')),
              ),
              _buildPageViewContainer(
                title: 'Отслеживание\nсвоих задач',
                image: _buildImage(
                  'assets/images/a3.png',
                ),
                child: TextButton(
                    onPressed: () {
                      sl<NavigationPagesBloc>()
                          .add(ToLoginNavigationPagesEvent());
                    },
                    child: Text('Пропустить')),
              ),
              _buildPageViewContainer(
                title: 'Новости\nи события команды',
                image: _buildImage('assets/images/a4.png'),
                child: SizedBox(
                  width: 100,
                  child: ButtonApp(
                    onTap: () {
                      sl<NavigationPagesBloc>()
                          .add(ToLoginNavigationPagesEvent());
                    },
                    text: 'Далее',
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: _buildBottomPanel(),
        ),
      ],
    );
  }

  Widget _buildPageViewContainer({
    required String title,
    required Widget image,
    required Widget child,
  }) {
    return Container(
      //color: colors[i],
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 350,
          child: Column(
            children: [
              image,
              Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return isPreview
        ? _buildPageViewContainer(
            title: 'Добро пожаловать \nв E-Legion Desck!',
            image: _buildImage('assets/images/a1.png'),
            child: SizedBox(
              width: 100,
              child: ButtonApp(
                onTap: () {
                  setState(() {
                    isPreview = false;
                  });
                },
                text: 'Что это ?',
              ),
            ),
          )
        : _buildPageView(context);
  }
}

const Size kDefaultSize = Size.square(9.0);
const EdgeInsets kDefaultSpacing = EdgeInsets.all(6.0);
const ShapeBorder kDefaultShape = CircleBorder();

class DotsDecorator {
  /// Inactive dot color
  ///
  /// @Default `Colors.grey`
  final Color color;

  /// Active dot color
  ///
  /// @Default `Colors.lightBlue`
  final Color activeColor;

  /// Inactive dot size
  ///
  /// @Default `Size.square(9.0)`
  final Size size;

  /// Active dot size
  ///
  /// @Default `Size.square(9.0)`
  final Size activeSize;

  /// Inactive dot shape
  ///
  /// @Default `CircleBorder()`
  final ShapeBorder shape;

  /// Active dot shape
  ///
  /// @Default `CircleBorder()`
  final ShapeBorder activeShape;

  /// Spacing between dots
  ///
  /// @Default `EdgeInsets.all(6.0)`
  final EdgeInsets spacing;

  const DotsDecorator({
    this.color = Colors.grey,
    this.activeColor = Colors.lightBlue,
    this.size = kDefaultSize,
    this.activeSize = kDefaultSize,
    this.shape = kDefaultShape,
    this.activeShape = kDefaultShape,
    this.spacing = kDefaultSpacing,
  });
}

typedef OnTap = void Function(double position);

class DotsIndicator extends StatelessWidget {
  final int dotsCount;
  final double position;
  final DotsDecorator decorator;
  final Axis axis;
  final bool reversed;
  final OnTap? onTap;
  final MainAxisSize mainAxisSize;
  final MainAxisAlignment mainAxisAlignment;

  const DotsIndicator({
    Key? key,
    required this.dotsCount,
    this.position = 0.0,
    this.decorator = const DotsDecorator(),
    this.axis = Axis.horizontal,
    this.reversed = false,
    this.mainAxisSize = MainAxisSize.min,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.onTap,
  })  : assert(dotsCount > 0),
        assert(position >= 0),
        assert(
          position < dotsCount,
          'Position must be inferior than dotsCount',
        ),
        super(key: key);

  Widget _buildDot(int index) {
    final state = min(1.0, (position - index).abs());

    final size = Size.lerp(decorator.activeSize, decorator.size, state)!;
    final color = Color.lerp(decorator.activeColor, decorator.color, state);
    final shape = ShapeBorder.lerp(
      decorator.activeShape,
      decorator.shape,
      state,
    )!;

    final dot = Container(
      width: size.width,
      height: size.height,
      margin: decorator.spacing,
      decoration: ShapeDecoration(
        color: color,
        shape: shape,
      ),
    );
    return onTap == null
        ? dot
        : InkWell(
            customBorder: const CircleBorder(),
            onTap: () => onTap!(index.toDouble()),
            child: dot,
          );
  }

  @override
  Widget build(BuildContext context) {
    final dotsList = List<Widget>.generate(dotsCount, _buildDot);
    final dots = reversed == true ? dotsList.reversed.toList() : dotsList;

    return axis == Axis.vertical
        ? Column(
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: mainAxisSize,
            children: dots,
          )
        : Row(
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: mainAxisSize,
            children: dots,
          );
  }
}
