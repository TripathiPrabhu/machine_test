import 'package:flutter/material.dart';

class HappeningNow extends StatefulWidget {
  const HappeningNow({Key? key}) : super(key: key);

  @override
  State<HappeningNow> createState() => _HappeningNowState();
}

class _HappeningNowState extends State<HappeningNow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 25, right: 12),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(' Happening Now',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 12,),
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child:  Card(
                  color: Colors.white,
                 shape: RoundedRectangleBorder(
               borderRadius: BorderRadiusDirectional.circular(12.0)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(

                          width: MediaQuery.of(context).size.width,
                          height: 210.0,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(
                              width: 4
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Image( image: AssetImage('images/happening_now.png'),
                          fit: BoxFit.fitHeight,
                          ),
                        ),
                      )
                    ],
                  ),

                ),
              ),
        ],
      ),
    );
  }
}
