import 'package:flutter/material.dart';

import '../helpers/event-attending-container-card.dart';

class EventAttending extends StatelessWidget {
  const EventAttending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 25, right: 12),
          child:
          Column(
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' Events Attending',
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
              SizedBox(
                height: 8,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    EventAttendinContainer(People_Attend: '1.5K People attend', ImgUrl: 'images/event-attend2.png',),
                    EventAttendinContainer(People_Attend: '5K People attend', ImgUrl: 'images/event-attend1.png',),
                    EventAttendinContainer(People_Attend: '1.5K People attend', ImgUrl: 'images/event-attend2.png',),
                    EventAttendinContainer(People_Attend: '5K People attend', ImgUrl: 'images/event-attend1.png',),
                    EventAttendinContainer(People_Attend: '1.5K People attend', ImgUrl: 'images/event-attend2.png',),
                    EventAttendinContainer(People_Attend: '5K People attend', ImgUrl: 'images/event-attend1.png',),
                    EventAttendinContainer(People_Attend: '1.5K People attend', ImgUrl: 'images/event-attend2.png',),
                    EventAttendinContainer(People_Attend: '5K People attend', ImgUrl: 'images/event-attend1.png',),

                    // Container(
                    //   height: 450,
                    //   width: MediaQuery.of(context).size.width/1.5,
                    //   child: Card(
                    //     color: Colors.yellow,
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadiusDirectional.circular(12.0)),
                    //     child: Column(
                    //       children: [
                    //         Padding(
                    //           padding: const EdgeInsets.all(15.0),
                    //           child: Container(
                    //             width: MediaQuery.of(context).size.width,
                    //             height: 210.0,
                    //             decoration: BoxDecoration(
                    //               color: Colors.red,
                    //               border: Border.all(width: 4),
                    //               borderRadius: BorderRadius.all(Radius.circular(10)),
                    //             ),
                    //             child: Image(
                    //               image: AssetImage('images/happening_now.png'),
                    //               fit: BoxFit.cover,
                    //             ),
                    //           ),
                    //         ),
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Row(
                    //               children: [
                    //                 IconButton(
                    //                   onPressed: () {},
                    //                   splashColor: Colors.green,
                    //                   hoverColor: Colors.teal,
                    //                   splashRadius: 18.0,
                    //                   icon: Icon(
                    //                     Icons.wifi_tethering,
                    //                     color: Colors.red.shade300,
                    //                     size: 30,
                    //                   ),
                    //                 ),
                    //                 Padding(
                    //                   padding:
                    //                   const EdgeInsets.only(left: 15, top: 8.0),
                    //                   child: Text(
                    //                     'LIVE',
                    //                     style: TextStyle(
                    //                         fontSize: 20, fontWeight: FontWeight.bold),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //             Padding(
                    //               padding: const EdgeInsets.only(
                    //                   left: 15, top: 8.0, right: 25),
                    //               child: Text(
                    //                 '\$85',
                    //                 //textAlign: TextAlign.right,
                    //                 style: TextStyle(
                    //                     fontSize: 20, fontWeight: FontWeight.bold),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //         Padding(
                    //           padding: const EdgeInsets.only(top: 20.0, left: 12.0),
                    //           child: Text(
                    //             'I Love You',
                    //             style: TextStyle(
                    //                 fontWeight: FontWeight.bold, fontSize: 25.0),
                    //           ),
                    //         ),
                    //
                    //         Padding(
                    //           padding: const EdgeInsets.only(top: 20.0, left: 12),
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.start,
                    //             children: [
                    //               Text('2.3K people attend ',
                    //                 style: TextStyle(
                    //                     fontWeight: FontWeight.w400, fontSize: 25.0),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //
                    //
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Container(
                    //   height: 450,
                    //   width: MediaQuery.of(context).size.width/1.5,
                    //   child: Card(
                    //     color: Colors.yellow,
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadiusDirectional.circular(12.0)),
                    //     child: Column(
                    //       children: [
                    //         Padding(
                    //           padding: const EdgeInsets.all(15.0),
                    //           child: Container(
                    //             width: MediaQuery.of(context).size.width,
                    //             height: 210.0,
                    //             decoration: BoxDecoration(
                    //               color: Colors.red,
                    //               border: Border.all(width: 4),
                    //               borderRadius: BorderRadius.all(Radius.circular(10)),
                    //             ),
                    //             child: Image(
                    //               image: AssetImage('images/happening_now.png'),
                    //               fit: BoxFit.cover,
                    //             ),
                    //           ),
                    //         ),
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Row(
                    //               children: [
                    //                 IconButton(
                    //                   onPressed: () {},
                    //                   splashColor: Colors.green,
                    //                   hoverColor: Colors.teal,
                    //                   splashRadius: 18.0,
                    //                   icon: Icon(
                    //                     Icons.wifi_tethering,
                    //                     color: Colors.red.shade300,
                    //                     size: 30,
                    //                   ),
                    //                 ),
                    //                 Padding(
                    //                   padding:
                    //                   const EdgeInsets.only(left: 15, top: 8.0),
                    //                   child: Text(
                    //                     'LIVE',
                    //                     style: TextStyle(
                    //                         fontSize: 20, fontWeight: FontWeight.bold),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //             Padding(
                    //               padding: const EdgeInsets.only(
                    //                   left: 15, top: 8.0, right: 25),
                    //               child: Text(
                    //                 '\$85',
                    //                 //textAlign: TextAlign.right,
                    //                 style: TextStyle(
                    //                     fontSize: 20, fontWeight: FontWeight.bold),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //         Padding(
                    //           padding: const EdgeInsets.only(top: 20.0, left: 12.0),
                    //           child: Text(
                    //             'I Love You',
                    //             style: TextStyle(
                    //                 fontWeight: FontWeight.bold, fontSize: 25.0),
                    //           ),
                    //         ),
                    //
                    //         Padding(
                    //           padding: const EdgeInsets.only(top: 20.0, left: 12),
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.start,
                    //             children: [
                    //               Text('2.3K people attend ',
                    //                 style: TextStyle(
                    //                     fontWeight: FontWeight.w400, fontSize: 25.0),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //
                    //
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              )

            ],
          ),
      );
  }
}
