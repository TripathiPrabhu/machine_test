import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        color: Colors.white,
        child: Row(children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage('images/image 193.png'),
                          ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0XFFF5F5F5), borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search,size: 35,color: Colors.black54,),
                            hintText: 'Search here',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 10.0,left: 10.0),
            child: Icon(Icons.notifications_outlined, size: 40.0,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 5.0),
            child: Icon(Icons.wechat_outlined, size: 40.0,),
          ),
        ],

        ),
      ),
    );
  }
}


    //   SafeArea(child: AppBar(
    //   actions: [
    //   CircleAvatar(
    //               radius: 25.0,
    //               backgroundImage: AssetImage('images/image 193.png'),
    //             ),
    //
    //             TextField(
    //               decoration: InputDecoration(
    //                   hintText: 'Search for something',
    //                   prefixIcon: Icon(Icons.search),
    //                   suffixIcon: Icon(Icons.camera_alt)),
    //
    //           ),
    //   ],
    // ));
    //
    // //   SafeArea(
    // //   child: Container(
    // //     height: 100,
    // //     color: Color(0XFFFFFFFF),
    // //     child: Row(
    // //       children: [
    // //         Padding(
    // //           padding: const EdgeInsets.all(12.0),
    // //           child: CircleAvatar(
    // //             radius: 25.0,
    // //             backgroundImage: AssetImage('images/image 193.png'),
    // //           ),
    // //         ),
    // //   Container(
    // //     width: double.infinity,
    // //     height: 40,
    // //     color: Colors.white,
    // //     child: Center(
    // //       child: TextField(
    // //         decoration: InputDecoration(
    // //             hintText: 'Search for something',
    // //             prefixIcon: Icon(Icons.search),
    // //             suffixIcon: Icon(Icons.camera_alt)),
    // //       ),
    // //     ),
    // //   ),
    // //       ],
    // //     ),
    // //   ),
    // // );


