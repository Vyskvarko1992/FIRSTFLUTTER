import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  @override
  Widget build(BuildContext context) {
    Widget _logo() {
      return Padding(
        padding: EdgeInsets.only(top: 100),
        child: Align(
          alignment: Alignment.topCenter,
          child: Image.asset("assets/images/logo.png"),
        ),
      );
    }

    Widget _background() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Image.asset("assets/images/background.png"),
      );
    }

    Widget _addContainer(image, text) {
      return Padding(
        padding: EdgeInsets.only(top: 13),
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 343,
            height: 122,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.white, spreadRadius: 0.15),
                ]),
            child: Padding(
                padding:
                    EdgeInsets.only(top: 21, bottom: 21, left: 21, right: 242),
                child: image),
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          _logo(),
          _background(),
          Column(children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 207)),
            _addContainer(
                Image.asset("assets/images/face.png"), Text("Мой профиль")),
            _addContainer(
                Image.asset("assets/images/face2.png"), Text("Мои тренировки")),
          ]),
        ],
      ),
    );
  }
}
