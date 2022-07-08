import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Active_User_Card extends StatelessWidget {
  String? ImageUrl ;
  String? name;
  Active_User_Card({required this.ImageUrl, required this.name});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 25),
      child: Container(
        height: 140,
        width: 100,
        // color: Colors.green,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(12.0)),
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Stack(
                    clipBehavior: Clip.none,
                    fit: StackFit.expand,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("$ImageUrl"),
                      ),
                      Positioned(
                          bottom: 0,
                          right: -40,
                          child: RawMaterialButton(
                            onPressed: () {},
                            elevation: 1,
                            // fillColor: Color(0xFFF5F6F9),
                            child: Icon(
                              Icons.circle,
                              color: Colors.green,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text("$name",style: TextStyle(fontWeight: FontWeight.w500,
                  fontSize: 14, ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
