import 'package:flutter/material.dart';

class CountTimer extends StatefulWidget {
  const CountTimer({Key? key}) : super(key: key);

  @override
  State<CountTimer> createState() => _CountTimerState();
}

class _CountTimerState extends State<CountTimer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 12, top: 25, right: 12),
    child: Container(
    height: 230,
    width: MediaQuery.of(context).size.width,
    // color: Colors.green,
    child: Card(
    color: Color(0XFF019CD5),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadiusDirectional.circular(12.0)),
    child: Column(
    children: [
      TweenAnimationBuilder<Duration>(
        duration: Duration(minutes:16 ),
        tween: Tween(begin: Duration(minutes: 16), end: Duration.zero),
        onEnd: () {
          print('Timer ended');
        },
        builder: (BuildContext context, Duration value, Widget? child) {
          final minutes = value.inMinutes;
          final seconds = value.inSeconds % 60;
          final milliseconds = value.inMilliseconds % 900000;
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text('$minutes M : $seconds S : $milliseconds MS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)));
        }
    ),
      Text(
        'Until your Next Profile Card',
        style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w400),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12, top: 50),
        child: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(onPressed: () {  },
            style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.lime,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
            child: Text('View More Profile cards',
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
        ),
      ),
      ),
      ]
    ),
    ),
    )

        );
  }
}
