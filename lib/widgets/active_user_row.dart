import 'package:flutter/material.dart';
import 'package:machine_test/utils/active_user_card.dart';

class ActiveUserRow extends StatelessWidget {
  const ActiveUserRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Active_User_Card(ImageUrl: 'images/top-image1.png',name: 'Frances Gracia',),
          Active_User_Card(ImageUrl: 'images/top-image2.png',name: 'Loise A. day',),
          Active_User_Card(ImageUrl: 'images/top-image3.png',name: 'Anne blythe',),
          Active_User_Card(ImageUrl: 'images/top-image1.png',name: 'Frances Gracia',),
          Active_User_Card(ImageUrl: 'images/top-image2.png',name: 'Loise A. day',),

        ],
      ),
    );
  }
}
