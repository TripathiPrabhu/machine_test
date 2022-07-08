import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class suggested_User_Card extends StatelessWidget {
  String? ImageUrl ;
  String? name;
  String? designation;
  suggested_User_Card({required this.ImageUrl, required this.name, required this.designation});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 25),
      child: Container(
        height: 210,
        width: 140,
        // color: Colors.green,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(12.0)),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.cancel_outlined,size: 20.0,)),
                ],
              ),
              SizedBox(
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
              Center(
                child: Text("$name",style: TextStyle(fontWeight: FontWeight.w500,
                  fontSize: 14, color: Colors.black ),),
              ),
              Center(
                child: Text("$designation",style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 14, color: Colors.black54 ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12, top: 10),
                child: SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(onPressed: () {  },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                      onPrimary: Colors.lime,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: Text('Connect',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
