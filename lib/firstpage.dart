import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotstar/data.dart';
import 'package:hotstar/screen_play_page.dart';
import 'package:hotstar/secondpage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  data d = data();
  int cnt = 0;
  bool kidsafe = false;
  int page = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 50,
          width: 150,
          child: Image.asset("images/hotstar_logo.png"),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color(0xff171515),
        width: MediaQuery.of(context).size.width * 0.75,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  title: Text(
                    "Log In",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  subtitle: Text("For a better experience",
                      style:
                          TextStyle(fontSize: 11, color: Colors.grey.shade500)),
                  trailing: Icon(
                    Icons.chevron_right_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              color: Color.fromARGB(
                223,
                27,
                31,
                32,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 8, left: 6),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      child: Image.asset(
                        "images/kids.png",
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.15,
                      )),
                  Text(
                    "Safe",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 170, 5),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Spacer(),
                  CupertinoSwitch(
                    value: kidsafe,
                    onChanged: (value) {
                      kidsafe = value;
                      setState(
                        () {},
                      );
                    },
                    thumbColor: (kidsafe)
                        ? Colors.blue
                        : Color.fromARGB(200, 185, 185, 185),
                    activeColor: Color.fromARGB(169, 13, 131, 173),
                    //trackColor: Colors.grey.shade500,
                  ),
                ],
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(
                    Icons.download_rounded,
                    color: Color.fromARGB(255, 143, 153, 154),
                  ),
                  title: Text(
                    "Download",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "Watch videos offlice",
                    style: TextStyle(color: Color.fromARGB(255, 113, 113, 113)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(
                    Icons.list,
                    color: Color.fromARGB(255, 143, 153, 154),
                  ),
                  title: Text(
                    "WatchList",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "Save to watch later",
                    style: TextStyle(color: Color.fromARGB(255, 113, 113, 113)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(
                    Icons.card_giftcard_outlined,
                    color: Color.fromARGB(255, 143, 153, 154),
                  ),
                  title: Text(
                    "Prizes",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "Prize you have won",
                    style: TextStyle(color: Color.fromARGB(255, 113, 113, 113)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(
                    Icons.g_translate_outlined,
                    color: Color.fromARGB(255, 143, 153, 154),
                  ),
                  title: Text(
                    "Laguages",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(
                    Icons.movie_creation,
                    color: Color.fromARGB(255, 143, 153, 154),
                  ),
                  title: Text(
                    "Movies",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
                child: InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Color.fromARGB(255, 143, 153, 154),
                ),
                title: Text(
                  "Preferences",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.help,
                  color: Color.fromARGB(255, 143, 153, 154),
                ),
                title: Text(
                  "Help",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.45,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 50),
              child: CarouselSlider(
                options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    setState(() {
                      page = index;
                    });
                  },
                  viewportFraction: 0.8,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 8),
                  autoPlayCurve: Curves.ease,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: d.page_view.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                          i,
                          width: MediaQuery.of(context).size.width,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            SmoothPageIndicator(
              controller: PageController(initialPage: page),
              count: d.page_view.length,
              effect: WormEffect(),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return second(0);
                  }),
                );
              },
              splashColor: Colors.black,
              highlightColor: Colors.black,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          height: 40,
                          margin: EdgeInsets.only(bottom: 5),
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(left: 14),
                          child: RichText(
                              text: TextSpan(
                            text: ("${d.catagory[0]}"),
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ))),
                    ),
                    //Spacer(flex: 2),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.chevron_right_outlined,
                          color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(left: 5),
              child: ListView.builder(
                itemCount: d.lt.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return screen_play_page(0, index);
                              },
                            ));
                          },
                          splashColor: Colors.black,
                          highlightColor: Colors.black,
                          child: ClipRRect(
                            child: Image.asset("${d.lt[index]}",
                                height: 200, width: 150),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return second(1);
                    },
                  ),
                );
              },
              splashColor: Colors.black,
              highlightColor: Colors.black,
              child: Container(
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 14),
                        child: RichText(
                            text: TextSpan(
                          text: ("${d.catagory[1]}"),
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ))),
                    Spacer(flex: 2),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.chevron_right_outlined,
                          color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(left: 5),
              child: ListView.builder(
                itemCount: d.popular.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return screen_play_page(1, index);
                              },
                            ));
                          },
                          splashColor: Colors.black,
                          highlightColor: Colors.black,
                          child: ClipRRect(
                            child: Image.asset("${d.popular[index]}",
                                height: 200, width: 150),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return second(2);
                    },
                  ),
                );
              },
              splashColor: Colors.black,
              highlightColor: Colors.black,
              child: Container(
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 14),
                        child: RichText(
                            text: TextSpan(
                          text: ("${d.catagory[2]}"),
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ))),
                    Spacer(flex: 2),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.chevron_right_outlined,
                          color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(left: 5),
              child: ListView.builder(
                itemCount: d.recommended_movies.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return screen_play_page(2, index);
                              },
                            ));
                          },
                          splashColor: Colors.black,
                          highlightColor: Colors.black,
                          child: ClipRRect(
                            child: Image.asset("${d.recommended_movies[index]}",
                                height: 200, width: 150),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return second(3);
                    },
                  ),
                );
              },
              splashColor: Colors.black,
              highlightColor: Colors.black,
              child: Container(
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 14),
                        child: RichText(
                            text: TextSpan(
                          text: ("${d.catagory[3]}"),
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ))),
                    Spacer(flex: 2),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.chevron_right_outlined,
                          color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(left: 5),
              child: ListView.builder(
                itemCount: d.recommended_shows.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return screen_play_page(3, index);
                              },
                            ));
                          },
                          splashColor: Colors.black,
                          highlightColor: Colors.black,
                          child: ClipRRect(
                            child: Image.asset("${d.recommended_shows[index]}",
                                height: 200, width: 150),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return second(4);
                    },
                  ),
                );
              },
              splashColor: Colors.black,
              highlightColor: Colors.black,
              child: Container(
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 14),
                        child: RichText(
                            text: TextSpan(
                          text: ("${d.catagory[4]}"),
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ))),
                    Spacer(flex: 2),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.chevron_right_outlined,
                          color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(left: 5),
              child: ListView.builder(
                itemCount: d.popular_movies.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return screen_play_page(4, index);
                              },
                            ));
                          },
                          splashColor: Colors.black,
                          highlightColor: Colors.black,
                          child: ClipRRect(
                            child: Image.asset("${d.popular_movies[index]}",
                                height: 200, width: 150),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return second(5);
                    },
                  ),
                );
              },
              splashColor: Colors.black,
              highlightColor: Colors.black,
              child: Container(
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 14),
                        child: RichText(
                            text: TextSpan(
                          text: ("${d.catagory[5]}"),
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ))),
                    Spacer(flex: 2),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.chevron_right_outlined,
                          color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(left: 5),
              child: ListView.builder(
                itemCount: d.foreign_shows.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return screen_play_page(5, index);
                              },
                            ));
                          },
                          splashColor: Colors.black,
                          highlightColor: Colors.black,
                          child: ClipRRect(
                            child: Image.asset("${d.foreign_shows[index]}",
                                height: 200, width: 150),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return second(6);
                    },
                  ),
                );
              },
              splashColor: Colors.black,
              highlightColor: Colors.black,
              child: Container(
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 14),
                        child: RichText(
                            text: TextSpan(
                          text: ("${d.catagory[6]}"),
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ))),
                    Spacer(flex: 2),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.chevron_right_outlined,
                          color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              padding: EdgeInsets.only(left: 5),
              child: ListView.builder(
                itemCount: d.hotstar_special.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return screen_play_page(6, index);
                              },
                            ));
                          },
                          splashColor: Colors.black,
                          highlightColor: Colors.black,
                          child: ClipRRect(
                            child: Image.asset("${d.hotstar_special[index]}",
                                height: 200, width: 150),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return second(7);
                    },
                  ),
                );
              },
              splashColor: Colors.black,
              highlightColor: Colors.black,
              child: Container(
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 14),
                        child: RichText(
                            text: TextSpan(
                          text: ("${d.catagory[7]}"),
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ))),
                    Spacer(flex: 2),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.chevron_right_outlined,
                          color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(left: 5),
              child: ListView.builder(
                itemCount: d.multiplex_movies.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return screen_play_page(7, index);
                              },
                            ));
                          },
                          splashColor: Colors.black,
                          highlightColor: Colors.black,
                          child: ClipRRect(
                            child: Image.asset("${d.multiplex_movies[index]}",
                                height: 200, width: 150),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return second(8);
                    },
                  ),
                );
              },
              splashColor: Colors.black,
              highlightColor: Colors.black,
              child: Container(
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 14),
                        child: RichText(
                            text: TextSpan(
                          text: ("${d.catagory[8]}"),
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ))),
                    Spacer(flex: 2),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.chevron_right_outlined,
                          color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(left: 5),
              child: ListView.builder(
                itemCount: d.star_wars.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return screen_play_page(8, index);
                              },
                            ));
                          },
                          splashColor: Colors.black,
                          highlightColor: Colors.black,
                          child: ClipRRect(
                            child: Image.asset("${d.star_wars[index]}",
                                height: 200, width: 150),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return second(9);
                    },
                  ),
                );
              },
              splashColor: Colors.black,
              highlightColor: Colors.black,
              child: Container(
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 14),
                        child: RichText(
                            text: TextSpan(
                          text: ("${d.catagory[9]}"),
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ))),
                    Spacer(flex: 2),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.chevron_right_outlined,
                          color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(left: 5),
              child: ListView.builder(
                itemCount: d.kids.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return screen_play_page(9, index);
                              },
                            ));
                          },
                          splashColor: Colors.black,
                          highlightColor: Colors.black,
                          child: ClipRRect(
                            child: Image.asset("${d.kids[index]}",
                                height: 200, width: 150),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return second(10);
                    },
                  ),
                );
              },
              splashColor: Colors.black,
              highlightColor: Colors.black,
              child: Container(
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 14),
                        child: RichText(
                            text: TextSpan(
                          text: ("${d.catagory[10]}"),
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ))),
                    Spacer(flex: 2),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.chevron_right_outlined,
                          color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(left: 5),
              child: ListView.builder(
                itemCount: d.popular_action.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return screen_play_page(10, index);
                              },
                            ));
                          },
                          splashColor: Colors.black,
                          highlightColor: Colors.black,
                          child: ClipRRect(
                            child: Image.asset("${d.popular_action[index]}",
                                height: 200, width: 150),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return second(11);
                    },
                  ),
                );
              },
              splashColor: Colors.black,
              highlightColor: Colors.black,
              child: Container(
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        margin: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 14),
                        child: RichText(
                            text: TextSpan(
                          text: ("${d.catagory[11]}"),
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ))),
                    Spacer(flex: 2),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.chevron_right_outlined,
                          color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(left: 5),
              child: ListView.builder(
                itemCount: d.super_hero.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return screen_play_page(11, index);
                              },
                            ));
                          },
                          splashColor: Colors.black,
                          highlightColor: Colors.black,
                          child: ClipRRect(
                            child: Image.asset("${d.super_hero[index]}",
                                height: 200, width: 150),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            cnt = value;
          });
        },
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.shifting,
        currentIndex: cnt,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.grey,
        //selectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
                color: Colors.white,
              ),
              label: "home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.live_tv_outlined,
                color: Colors.white,
              ),
              label: "Tv",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Image.asset(
                "images/disney.png",
                height: 26,
                width: 60,
                alignment: Alignment.center,
              ),
              backgroundColor: Colors.black,
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.movie_creation_outlined,
                color: Colors.white,
              ),
              label: "Movies",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.sports_cricket_outlined,
                color: Colors.white,
              ),
              label: "Sports",
              backgroundColor: Colors.black),
        ],
      ),
    );
  }
}