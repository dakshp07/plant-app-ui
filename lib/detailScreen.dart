import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  Color primaryColor = Color(0xFF0C9869);
  Color textColor = Color(0xFF3C4046);
  Color backColor = Color(0xFFF9F8FD);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: new Column(
          children: [new SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: new Row(
            children: [
              new Padding(padding: const EdgeInsets.symmetric(horizontal: 10)),
              new Container(
                child: new Column(
                children: [
                  new Row(
                    children: [
                      new IconButton(icon: new SvgPicture.asset("assets/icons/back_arrow.svg",height: 30,), onPressed: (){Navigator.pop(context);}),
                    ],
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 120),),
                  new Card(
                    color: Colors.white,
                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    elevation: 20,
                    shadowColor: Colors.black45,
                    child: new Container(
                      padding: const EdgeInsets.all(10),
                      child: new SvgPicture.asset("assets/icons/sun.svg"),
                    ),
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 30),),
                  new Card(
                    color: Colors.white,
                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(18))),
                    elevation: 20,
                    shadowColor: Colors.black45,
                    child: new Container(
                      padding: const EdgeInsets.all(15),
                      child: new SvgPicture.asset("assets/icons/icon_2.svg"),
                    ),
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 30),),
                  new Card(
                    color: Colors.white,
                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(18))),
                    elevation: 20,
                    shadowColor: Colors.black45,
                    child: new Container(
                      padding: const EdgeInsets.all(15),
                      child: new SvgPicture.asset("assets/icons/icon_3.svg"),
                    ),
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 30),),
                  new Card(
                    color: Colors.white,
                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(18))),
                    elevation: 20,
                    shadowColor: Colors.black45,
                    child: new Container(
                      padding: const EdgeInsets.all(15),
                      child: new SvgPicture.asset("assets/icons/icon_4.svg"),
                    ),
                  ),
                ],
              ),
              ),
              new Container(
                alignment: Alignment.topRight,
                child: new ClipRRect(
                child: new Image.asset("assets/images/img_main.png",fit: BoxFit.cover,height:650,),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              )
            ],
        ),
          ),
          new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Padding(padding: const EdgeInsets.symmetric(horizontal: 10),),
              new Column(
            children: [
              new Text("Angelica",style: TextStyle(fontSize: 35,color: textColor,fontWeight: FontWeight.bold),),
              new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Text("Russia",style: TextStyle(fontSize: 25,color: primaryColor),)
                ],
              )
            ],
          ),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 80),),
          new Text("\$440",style: TextStyle(fontSize: 30,color: primaryColor),),
            ],
          ),
            new Row(
            children: [
              new Container(
                padding: const EdgeInsets.all(25),
                height: 180,
                width: 220,
                decoration: new BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                  )
                ),
                child: new Text("Buy Now",style: TextStyle(fontSize: 30,color: Colors.white,),),
              ),
              new Container(
                padding: const EdgeInsets.all(25),
                height: 180,
                width: 190,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                  )
                ),
                child: new Text("Description",style: TextStyle(fontSize: 25,color: textColor,),),
              ),
            ],
          )
          ]
        ),
      )
    );
  }
}