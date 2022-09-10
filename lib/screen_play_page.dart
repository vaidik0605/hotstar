import 'package:flutter/material.dart';
import 'package:hotstar/data.dart';
import 'package:hotstar/firstpage.dart';

class screen_play_page extends StatefulWidget {
  int i;
  int index;

  screen_play_page(this.i, this.index);

  @override
  State<screen_play_page> createState() => _screen_play_pageState();
}

data d = data();

class _screen_play_pageState extends State<screen_play_page> {
  String poster = "";

  @override
  void initState() {
    super.initState();
    switch (widget.i) {
      case 0:
        poster = d.lt_postyer[widget.index];
        break;
      case 1:
        poster = d.popular_poster[widget.index];
        break;
      case 2:
        poster = d.recommended_movies_poster[widget.index];
        break;
      case 3:
        poster = d.recommended_shows_poster[widget.index];
        break;
      case 4:
        poster = d.popular_movies_poster[widget.index];
        break;
      case 5:
        poster = d.foreign_shows_poster[widget.index];
        break;
      case 6:
        poster = d.hotstar_special_poster[widget.index];
        break;
      case 7:
        poster = d.multiplex_movies_poster[widget.index];
        break;
      case 8:
        poster = d.star_wars_poster[widget.index];
        break;
      case 9:
        poster = d.kids_poster[widget.index];
        break;
      case 10:
        poster = d.popular_action_poster[widget.index];
        break;
      case 11:
        poster = d.super_hero_poster[widget.index];
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
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
        title:  RichText(
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
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Image.network(poster),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
