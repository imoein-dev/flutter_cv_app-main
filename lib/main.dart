import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        '@imoein.dev',
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
          ),
          _getHeader(),
        ],
      ),
    );
  }
}

Widget _getHeader() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 20),
      CircleAvatar(
        backgroundImage: AssetImage('images/icon_me2.png'),
        radius: 70,
      ),
      SizedBox(height: 15),
      Text(
        'I am Moein, a programmer and student',
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
      ),
      SizedBox(height: 15),
      Text(
        'Lover of mobile and Android programming and Flutter.I like to teach everything I learn.',
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 12,
      ),
      _getRowIcone(),
      SizedBox(
        height: 12,
      ),
      _getSkillCards(),
      SizedBox(
        height: 12,
      ),
      _getResume(),
    ],
  );
}

Widget _getHistoryColumn() {
  var list = [
    'My name is Moein Ali Poor,Iam 18 years old,',
    'I am studying in the field of network and software,',
    'I am interested in web and Android programming,',
    'Flutter and Dart in Android,',
    'Getting to know the concepts of C++, C#, html, css, Flutter, python,',
    'I have enough knowledge of how the web works,',
    'Thank you for taking the time to read this biography.',
  ];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        width: double.infinity,
        height: 20,
      ),
      for (var Title in list)
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 5,
            ),
            Text('$Title', textDirection: TextDirection.ltr),
          ],
        ),
    ],
  );
}

Widget _getResume() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    width: double.infinity,
    color: Colors.grey[200],
    child: Column(
      children: [
        Text(
          'biography',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        _getHistoryColumn(),
      ],
    ),
  );
}

Widget _getSkillCards() {
  var list = [
    'android',
    'flutter',
    'dart',
    'html',
    'css',
    'python',
    'C#',
    'C++',
    'Ps',
    'Ai',
    'developing...'
  ];
  return Wrap(
    spacing: 10,
    runSpacing: 10,
    children: [
      for (var skill in list)
        Card(
          elevation: 6,
          shadowColor: Colors.black,
          child: Column(
            children: [
              Container(
                height: 100.0,
                width: 120.0,
                child: Image(
                  image: AssetImage('images/$skill.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  '$skill',
                ),
              ),
            ],
          ),
        )
    ],
  );
}

Widget _getRowIcone() {
  return Wrap(
    alignment: WrapAlignment.center,
    children: [
      IconButton(
        onPressed: () {},
        icon: FaIcon(FontAwesomeIcons.linkedin),
        color: Colors.blueAccent,
      ),
      IconButton(
        onPressed: () {},
        // ignore: deprecated_member_use
        icon: FaIcon(FontAwesomeIcons.instagramSquare),
        color: Colors.pink,
      ),
      IconButton(
        onPressed: () {},
        icon: FaIcon(FontAwesomeIcons.telegram),
        color: Colors.blue,
      ),
      IconButton(
        onPressed: () {},
        // ignore: deprecated_member_use
        icon: FaIcon(FontAwesomeIcons.githubSquare),
        color: Colors.black,
      ),
    ],
  );
}
