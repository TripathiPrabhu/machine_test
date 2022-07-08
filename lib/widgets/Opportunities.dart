import 'package:flutter/material.dart';

import '../helpers/Opportunities_Card.dart';

class Opportunities extends StatelessWidget {
  const Opportunities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ' Opportunities',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(onPressed: (){},
                  child: Text('View All',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600
                    ),))
            ],
          ),
        ),

        Opportunity_Card(ImgUrl: 'images/opportunity1.png',
          Avatorlogo: 'images/avator-logo1.png', CompanyName: 'Creative Studios',
          CompanyProfile: 'Design Agency Company', Stream: '5h ago',),
        Opportunity_Card(ImgUrl: 'images/oppot-2.png',
          Avatorlogo: 'images/avator-logo2.png', CompanyName: 'Artifice Film',
          CompanyProfile: 'Video Ads Company', Stream: '1 day ago',),
        Opportunity_Card(ImgUrl: 'images/oppot-3.png',
          Avatorlogo: 'images/avator-logo3.png', CompanyName: 'Creative Studios',
          CompanyProfile: 'Design Agency Company', Stream: '5h ago',),
        Opportunity_Card(ImgUrl: 'images/oppot-4.png',
          Avatorlogo: 'images/avator-logo4.png', CompanyName: 'Creative Studios',
          CompanyProfile: 'Design Agency Company', Stream: '32M ago',),
      ],
    );
  }
}
