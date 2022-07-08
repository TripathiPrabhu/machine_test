import 'package:flutter/material.dart';
import 'package:machine_test/helpers/suggested-user-card.dart';
import '../helpers/active_user_card.dart';

class SuggestedUserRow extends StatelessWidget {
  const SuggestedUserRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          suggested_User_Card(ImageUrl: 'images/top-image1.png',name: 'Frances Gracia', designation: 'UI Designer',),
          suggested_User_Card(ImageUrl: 'images/top-image2.png',name: 'Loise A. day',designation: 'Branding Engineer'),
          suggested_User_Card(ImageUrl: 'images/top-image3.png',name: 'Anne blythe',designation: 'UI Designer'),
          suggested_User_Card(ImageUrl: 'images/top-image1.png',name: 'Frances Gracia',designation:'Branding Engineer'),
          suggested_User_Card(ImageUrl: 'images/top-image2.png',name: 'Loise A. day',designation:'Branding Engineer'),

        ],
      ),
    );
  }
}
