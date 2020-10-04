import 'package:farid/Provider/CardProvider.dart';
import 'package:farid/UI/Compnants/Background_Img.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var provider = CardProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: [
          BGImg(),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05,
                bottom: 10,
                left: 8,
                right: 8),
            child: Column(
              children: [
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search_sharp,
                          color: Colors.grey,
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      child: InkWell(
                        child: Icon(
                          Icons.dehaze_sharp,
                          size: 35,
                          color: Colors.grey,
                        ),
                        onTap: () => _scaffoldKey.currentState.openDrawer(),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      child: InkWell(
                        child: Icon(
                          Icons.account_circle_outlined,
                          size: 35,
                          color: Colors.grey,
                        ),
                        onTap: () => _scaffoldKey.currentState.openDrawer(),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: provider.items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return Container(
                      width: 200,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 40,
                                    color: Color.fromRGBO(0, 31, 61, 1),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  children: [
                                    Text(provider.items[i].codColor + ' code')
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
      drawer: Drawer(),
    );
  }
}
