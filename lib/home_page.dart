import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machine_test/utils/Timer_countDown_Page.dart';
import 'package:machine_test/widgets/App_Bar.dart';
import 'package:machine_test/widgets/Happening_Now.dart';
import 'package:machine_test/widgets/active_user_row.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0XFFF5F5F5),
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ActiveUserRow(),
              Timer(),
              HappeningNow(),

            ],
          ),
        ),
      ),
    );
  }
}
