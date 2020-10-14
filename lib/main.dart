import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/detailScreen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        brightness : Brightness.light,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color primaryColor = Color(0xFF0C9869);
  Color textColor = Color(0xFF3C4046);
  Color backColor = Color(0xFFF9F8FD);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: new IconButton(icon: new SvgPicture.asset("assets/icons/menu.svg"), onPressed: (){}),
      ),
      bottomNavigationBar: new BottomAppBar(
        color: Colors.white,
        child: new SizedBox(
          height: 50,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              new SvgPicture.asset("assets/icons/flower.svg"),
              new SvgPicture.asset("assets/icons/heart-icon.svg"),
              new SvgPicture.asset("assets/icons/user-icon.svg"),
            ],
          ),
        ),
      ),
      body: new SingleChildScrollView(
          child: new Column(
          children: [
            new Stack(
              children: [
                new Container(
                  height: 140,
                  width: 720,
                  decoration: new BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    )
                  ),
                ),
                new Container(
                  padding: const EdgeInsets.all(12),
                  child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Text("Hi Uishopy!",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold),),
                    new Image.asset("assets/images/logo.png"),
                  ],
                ),
                ),
                new Container(
                  height: 190,
                  width: 720,
                  alignment: Alignment.bottomCenter,
                  child: new Container(
                    padding: const EdgeInsets.all(25),
                    child: new Card(
                      elevation: 20,
                      shadowColor: Colors.black12,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      color: Colors.white,
                      child: new TextFormField(
                      decoration: new InputDecoration(
                        contentPadding: const EdgeInsets.all(15),
                        hintText: "Search",
                        hintStyle: TextStyle(fontSize: 15,color: primaryColor),
                        suffixIcon: new Icon(Icons.search,size:30,color: primaryColor,),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                    )
                  ),
                )
              ],
            ),
            //new Padding(padding: const EdgeInsets.only(top: 5)),
            new Row(
              children: [
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 10),),
                new Text("Recomended",style: TextStyle(fontSize: 25,color:textColor,fontWeight: FontWeight.bold)),
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 80),),
                new Card(
                  color: primaryColor,
                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: new Container(
                    padding: const EdgeInsets.all(10),
                    child: new Text("More",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                  )
                )
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top : 5)),
            new SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: new Row(
                children: [
                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 10),),
                  new Card(
                    elevation: 20,
                    shadowColor: Colors.black38,
                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Column(
                      children: [
                        new Image.asset("assets/images/image_1.png",height: 240,width: 200,fit: BoxFit.fitHeight,),
                        new Padding(padding: const EdgeInsets.only(top: 5),),
                        new Row(
                          children: [
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Text("SAMNTHA",style: TextStyle(fontSize: 20,color:textColor),),
                                new Padding(padding: const EdgeInsets.only(top: 5)),
                                new Text("RUSSIA",style: TextStyle(fontSize: 15,color:primaryColor),),
                              ],
                            ),
                            new Padding(padding: const EdgeInsets.symmetric(horizontal: 20),),
                            new Text("\$400",style: TextStyle(fontSize: 20,color: primaryColor,fontWeight: FontWeight.bold),)
                          ],
                        ),
                        new Padding(padding: const EdgeInsets.only(bottom: 5)),
                      ],
                    ),
                  ),
                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 5),),
                  new GestureDetector(
                      child: new Card(
                      elevation: 20,
                      shadowColor: Colors.black38,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: new Column(
                        children: [
                          new Image.asset("assets/images/image_2.png",height: 240,width: 200,fit: BoxFit.fitHeight,),
                          new Padding(padding: const EdgeInsets.only(top: 5),),
                          new Row(
                            children: [
                              new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  new Text("ANGELICA",style: TextStyle(fontSize: 20,color:textColor),),
                                  new Padding(padding: const EdgeInsets.only(top: 5)),
                                  new Text("RUSSIA",style: TextStyle(fontSize: 15,color:primaryColor),),
                                ],
                              ),
                              new Padding(padding: const EdgeInsets.symmetric(horizontal: 20),),
                              new Text("\$540",style: TextStyle(fontSize: 20,color: primaryColor,fontWeight: FontWeight.bold),)
                            ],
                          ),
                          new Padding(padding: const EdgeInsets.only(bottom: 5)),
                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>DetailScreen()));
                    },
                  ),
                ],
              ),
            ),
            new Padding(padding: const EdgeInsets.only(top: 5)),
            new Row(
              children: [
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 10),),
                new Text("Featured Plants",style: TextStyle(fontSize: 25,color:textColor,fontWeight: FontWeight.bold)),
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 66),),
                new Card(
                  color: primaryColor,
                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: new Container(
                    padding: const EdgeInsets.all(10),
                    child: new Text("More",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                  )
                )
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top : 5)),
            new SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: new Row(
                children: [
                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 10),),
                  new Card(
                    elevation: 20,
                    shadowColor: Colors.black38,
                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Column(
                      children: [
                        new ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: new Image.asset("assets/images/bottom_img_1.png",height: 239,width: 300,fit: BoxFit.fitHeight),
                        )
                      ],
                    ),
                  ),
                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 5),),
                  new Card(
                    elevation: 20,
                    shadowColor: Colors.black38,
                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Column(
                      children: [
                        new Image.asset("assets/images/bottom_img_2.png",height: 240,width: 200,fit: BoxFit.fitWidth,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}