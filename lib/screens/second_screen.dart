import 'package:flutter/material.dart';
import 'package:tapshyrma1_2/widgets/custom_appbar.dart';
import 'package:tapshyrma1_2/widgets/custom_rect_button.dart';

class SecondScreen extends StatefulWidget {
  final int san;

  const SecondScreen({Key key, this.san}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
              'Тапшырма 02',
              automaticallyImplyLeading: true,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomRectButton(
                    number: widget.san,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
