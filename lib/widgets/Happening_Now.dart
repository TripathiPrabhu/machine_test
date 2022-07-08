import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';



class HappeningNow extends StatefulWidget {
  const HappeningNow({Key? key}) : super(key: key);

  @override
  State<HappeningNow> createState() => _HappeningNowState();
}

class _HappeningNowState extends State<HappeningNow> {
  bool descTextShowFlag = false;
  var text = lorem(paragraphs: 4, words: 200);
  //bool isLive = true;
  //int happeningNowPrice = 85;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 25, right: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' Happening Now',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: 450,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(12.0)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 210.0,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(width: 4),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Image(
                            image: AssetImage('images/happening_now.png'),
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
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 12.0),
                          child: Column(
                            children: [
                              Text('$text',
                                  maxLines: descTextShowFlag ? 8 : 2,textAlign: TextAlign.start),
                          InkWell(
                            onTap: (){ setState(() {
                              descTextShowFlag = !descTextShowFlag;
                            }); },
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  descTextShowFlag ? Text("Show Less",style: TextStyle(color: Colors.blue),) :  Text("Show More",style: TextStyle(color: Colors.blue))
                              ],
                          ),
                            ),

                          // Text(
                          //   lorem(words: 7, paragraphs: 1),
                          //   style: TextStyle(
                          //       fontWeight: FontWeight.bold, fontSize: 25.0),
                          // ),
                        ),

    Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 12, bottom: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Text('2.3K people attend ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 25.0),
                              ),
                          ],
                        ),
                        ),
                    ],
                  ),
              ),
                      ),
        ],
      ),
                ),
    ),
    ),
          )
        ]
    )
    );
  }
}
