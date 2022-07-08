import 'package:flutter/material.dart';


class EventAttendinContainer extends StatelessWidget {
  String? ImgUrl;
  String? People_Attend;
  EventAttendinContainer({required this.ImgUrl, required this.People_Attend});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 470.0,
      width: MediaQuery.of(context).size.width/1.3,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(12.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(width: 4),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Image(
                  image: AssetImage('$ImgUrl'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      splashColor: Colors.green,
                      hoverColor: Colors.teal,
                      splashRadius: 18.0,
                      icon: Icon(
                        Icons.wifi_tethering,
                        color: Colors.red.shade300,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 15, top: 8.0),
                      child: Text(
                        'LIVE',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, top: 8.0, right: 25),
                  child: Text(
                    '\$85',
                    //textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 12.0),
              child: Text(
                '20 May 2022',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 25.0,color: Colors.teal),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 12),
              child: Text('Event Name Here ',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 12),
              child: Text('$People_Attend',
                style: TextStyle(
                    fontWeight: FontWeight.w400, fontSize: 22.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12, top: 20),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(onPressed: () {  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    onPrimary: Colors.lime,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: Text('Add to Calender',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


