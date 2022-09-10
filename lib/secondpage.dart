import 'package:flutter/material.dart';
import 'package:hotstar/data.dart';
import 'package:hotstar/firstpage.dart';
import 'package:hotstar/screen_play_page.dart';

class second extends StatefulWidget {
  int i;

  second(this.i);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  data d = data();
  double ratio = 0;
  int count = 0;
  List<String> tmp = [];

  @override
  void initState() {
    super.initState();
    switch (widget.i) {
      case 0:
        tmp = d.lt;
        ratio = 0.8;
        count = 3;
        break;
      case 1:
        tmp = d.popular;
        ratio = 0.8;
        count = 3;
        break;
      case 2:
        tmp = d.recommended_movies;
        ratio = 0.8;
        count = 3;
        break;
      case 3:
        tmp = d.recommended_shows;
        ratio = 0.8;
        count = 3;
        break;
      case 4:
        tmp = d.popular_movies;
        ratio = 0.8;
        count = 3;
        break;
      case 5:
        tmp = d.foreign_shows;
        ratio = 0.8;
        count = 3;
        break;
      case 6:
        tmp = d.hotstar_special;
        ratio = 1.8;
        count = 2;
        break;
      case 7:
        tmp = d.multiplex_movies;
        ratio = 0.8;
        count = 3;
        break;
      case 8:
        tmp = d.star_wars;
        ratio = 0.8;
        count = 3;
        break;
      case 9:
        tmp = d.kids;
        ratio = 0.8;
        count = 3;
        break;
      case 10:
        tmp = d.popular_action;
        ratio = 0.8;
        count = 3;
        break;
      case 11:
        tmp = d.super_hero;
        ratio = 0.8;
        count = 3;
        break;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, firstpage());
          },
          splashColor: Colors.black,
          highlightColor: Colors.black,
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        title: RichText(
            text: TextSpan(
                text: "${d.catagory[widget.i]}",
                style: TextStyle(fontSize: 18, color: Colors.white))),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10),
              child: GridView.builder(
                  itemCount: tmp.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return screen_play_page(widget.i, index);
                            },
                          ),
                        );
                      },
                      splashColor: Colors.black,
                      highlightColor: Colors.black,
                      child: Container(
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset("${tmp[index]}")),
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: count,
                      mainAxisSpacing: 5,
                      childAspectRatio: ratio)),
            ),
          ),
        ],
      ),
    );
  }
}
