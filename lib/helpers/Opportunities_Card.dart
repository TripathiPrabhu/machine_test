import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class Opportunity_Card extends StatefulWidget {
  String? ImgUrl;
  String? Avatorlogo;
  String? CompanyName;
  String? CompanyProfile;
  String? Stream;


  Opportunity_Card(
      {required this.ImgUrl,
      required this.Avatorlogo,
      required this.CompanyName,
      required this.Stream,
      required this.CompanyProfile});

  @override
  State<Opportunity_Card> createState() => _Opportunity_CardState();
}

class _Opportunity_CardState extends State<Opportunity_Card> {
  bool descTextShowFlag = false;

  var text = lorem(paragraphs: 4, words: 200);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child:
      Container(
          height: descTextShowFlag?600:500,
          width: MediaQuery.of(context).size.width,
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(12.0)),
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('${widget.Avatorlogo}'),
                          radius: 30.0,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5, top: 0),
                                child: Text(
                                  '${widget.CompanyName}',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 5.0),
                                child: Text(
                                  '${widget.CompanyProfile}',
                                  style: TextStyle(
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.circle,
                            size: 10.0,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '${widget.Stream}',
                          style: TextStyle(fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_vert),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('$text',
                            maxLines: descTextShowFlag ? 8 : 2,textAlign: TextAlign.start),
                        InkWell(
                          onTap: (){ setState(() {
                            descTextShowFlag = !descTextShowFlag;
                          }); },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              descTextShowFlag ? Text("Show Less",style: TextStyle(color: Colors.blue),) :  Text("Show More",style: TextStyle(color: Colors.blue))
                            ],
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

                  // Padding(
                  //   padding: const EdgeInsets.only(top: 20.0, left: 12.0),
                  //   child: Text(
                  //     lorem(words: 7, paragraphs: 1),
                  //     style: TextStyle(
                  //         fontWeight: FontWeight.w500, fontSize: 20.0),
                  //   ),
                  // ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      //height: 300.0,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(width: 4),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Image(
                        image: AssetImage('${widget.ImgUrl}'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
