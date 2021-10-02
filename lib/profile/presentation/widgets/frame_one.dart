import 'package:flutter/material.dart';
import 'package:hack_team_flutter_app/profile/presentation/widgets/button_app.dart';

class FrameOneView extends StatefulWidget {
  const FrameOneView({Key? key}) : super(key: key);

  @override
  State<FrameOneView> createState() => _FrameOneViewState();
}

class _FrameOneViewState extends State<FrameOneView> {
  String title = 'Запросить чек-лист?';
  bool isSend = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        if (!isSend)
          Text(
            'Мы отправим его на почту',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
            ),
          ),
        SizedBox(
          height: 20.0,
        ),
        if (!isSend)
          ButtonApp(
            onTap: () {
              setState(() {
                title = 'Отлично, запрос отправлен!';
                isSend = true;
              });
            },
            text: 'Запросить',
          ),
        if (!isSend)
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Нет, спасибо'),
            ),
          ),
        if (isSend)
          ButtonApp(
            onTap: () {
              Navigator.pop(context);
            },
            text: 'Вернуться в профиль',
          ),
      ],
    );
  }
}
