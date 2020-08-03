import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'drawer.dart';




void main() {
  runApp(MaterialApp(home: HomeScreen()));
}

class BioData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/back.jpeg"),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                          colorFilter: ColorFilter.mode( Colors.black87.withOpacity(0.4), BlendMode.darken)
                      ),
                    ),
                    height: 400,
                    width: 650,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top:210.0,left: 70,right: 80),
                          child: SizedBox(
                            child: ColorizeAnimatedTextKit(
                                onTap: () {
                                  print("SAY HI RAKSHA");
                                },
                                text: [
                                  "Raksha's", "Raksha's", "Raksha's", "Raksha's", "Raksha's","Raksha's", "Raksha's", "Raksha's", "Raksha's", "Raksha's","Raksha's", "Raksha's", "Raksha's", "Raksha's", "Raksha's","Raksha's", "Raksha's",
                                ],
                                textStyle: TextStyle(
                                    fontSize: 80.0,
                                    fontFamily: "Billion Dreams",fontWeight: FontWeight.w500,letterSpacing: 1,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black,
                                          offset: Offset(1, 1),
                                          blurRadius: 5)
                                    ]
                                ),
                                colors: [
                                  Colors.deepPurple,
                                  Colors.blue,
                                  Colors.yellow,
                                  Colors.red,
                                ],
                                textAlign: TextAlign.center,
                                alignment: Alignment.center // or Alignment.topLeft
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: Text(
                            "Random Tales",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.dancingScript(
                              textStyle:  TextStyle(fontSize: 45, height: 0.5, fontWeight: FontWeight.w100, letterSpacing: 6, color: Colors.blueGrey,
                                  shadows: [
                                    Shadow(
                                        color: Colors.pinkAccent,
                                        offset: Offset(2, 2),
                                        blurRadius: 5)
                                  ]),),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/star.jpg"),fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode( Colors.black.withOpacity(0.6), BlendMode.darken),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.0, bottom: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: InkWell(
                                      // splashColor: Colors.deepPurpleAccent,
                                      onTap: () {
                                        launch("https://www.youtube.com/watch?v=IGbrHjqI6a4");
                                      },
                                      child: Container(
                                          padding: const EdgeInsets.all(15),
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              top: BorderSide(width: 8.0, color: Colors.deepPurple),
                                              left: BorderSide(width: 8.0, color: Colors.blueAccent),
                                              right: BorderSide(width: 4.0, color: Colors.yellowAccent),
                                              bottom: BorderSide(width: 4.0, color: Colors.redAccent),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                  "IT'S OKAY NOT TO BE OKAY",
                                                  style: GoogleFonts.frederickaTheGreat(
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w600,letterSpacing: 2,
                                                        fontSize: 16),)
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(bottom: 10)),
                                              Text(
                                                  "Cause Witches Are Always Pretty In My Fairytale! ",
                                                  style: GoogleFonts.roboto(
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w300,letterSpacing: 3,
                                                        fontSize: 12),)
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: InkWell(
                                      // splashColor: Colors.deepPurpleAccent,
                                      onTap: () {
                                        launch("https://www.youtube.com/watch?v=jqXUm2YS-mM");
                                      },
                                      child: Container(
                                          padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                end: Alignment.topRight,
                                                begin: Alignment.bottomLeft,
                                                colors: [
                                                  Colors.pinkAccent,
                                                  Colors.blueGrey
                                                ]),
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(10)),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                  "FOODWORLD|FOODSHA|WEBDEV",
                                                  style: GoogleFonts.frederickaTheGreat(
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w600,letterSpacing: 2,
                                                        fontSize: 16),)
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(bottom: 10)),
                                              Text(
                                                  "Sooru Fa Lyf!Food Is Bae!And Believe Me I Wrote Some Code ",
                                                  style: GoogleFonts.roboto(
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w300,letterSpacing: 3,
                                                        fontSize: 12),)
                                              ),

                                            ],
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: InkWell(
                                      // splashColor: Colors.deepPurpleAccent,
                                      onTap: () {
                                        launch("https://www.youtube.com/watch?v=jqXUm2YS-mM");
                                      },
                                      child: Container(
                                          padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage("images/love.jpg"),fit: BoxFit.cover,
                                              colorFilter: ColorFilter.mode(Colors.pinkAccent.withOpacity(0.2), BlendMode.srcOver),

                                            ),
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(10)),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                  "SARANGAE NARUTO",
                                                  style: GoogleFonts.frederickaTheGreat(
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w600,letterSpacing: 2,
                                                        fontSize: 16),)
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(bottom: 10)),
                                              Text(
                                                  "la la la la la la  la la la la la la la la la la la lorem text",
                                                  style: GoogleFonts.roboto(
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w300,letterSpacing: 3,
                                                        fontSize: 12),)
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: InkWell(
                                      // splashColor: Colors.deepPurpleAccent,
                                      onTap: () {
                                        launch("https://www.youtube.com/watch?v=jqXUm2YS-mM");
                                      },
                                      child: Container(
                                          padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            border: Border(
                                              top: BorderSide(width: 8.0, color: Colors.deepPurple),
                                              left: BorderSide(width: 8.0, color: Colors.blueAccent),
                                              right: BorderSide(width: 4.0, color: Colors.yellowAccent),
                                              bottom: BorderSide(width: 4.0, color: Colors.redAccent),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                  "IM ALIEN|SHUPSSHUP|",
                                                  style: GoogleFonts.frederickaTheGreat(
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w600,letterSpacing: 2,
                                                        fontSize: 16),)
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(bottom: 10)),
                                              Text(
                                                  "Have Yu Met Mr.Hubot?lol",
                                                  style: GoogleFonts.roboto(
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w300,letterSpacing: 3,
                                                        fontSize: 12),)
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                        ),
                        Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 8.0, top: 10, bottom: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: InkWell(
                                      // splashColor: Colors.deepPurpleAccent,
                                      onTap: () {
                                        launch("https://www.youtube.com/watch?v=jqXUm2YS-mM");
                                      },
                                      child: Container(
                                          padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage("images/ramen.jpg"),fit: BoxFit.cover,
                                              colorFilter: ColorFilter.mode(Colors.blueGrey.withOpacity(0.2), BlendMode.srcOver),
                                            ),
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(10)),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                  "NARUTO AND RAMEN",
                                                  style: GoogleFonts.frederickaTheGreat(
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w600,letterSpacing: 2,
                                                        fontSize: 16),)
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(bottom: 10)),
                                              Text(
                                                  "I Like Ramen But Hate The Three Minutes You Have To Wait While It Boils!",
                                                  style: GoogleFonts.roboto(
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w300,letterSpacing: 3,
                                                        fontSize: 12),)
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: InkWell(
                                      // splashColor: Colors.deepPurpleAccent,
                                      onTap: () {
                                        launch("https://www.youtube.com/watch?v=jqXUm2YS-mM");
                                      },
                                      child: Container(
                                          padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            border: Border(
                                              top: BorderSide(width: 8.0, color: Colors.deepPurple),
                                              left: BorderSide(width: 8.0, color: Colors.blueAccent),
                                              right: BorderSide(width: 4.0, color: Colors.yellowAccent),
                                              bottom: BorderSide(width: 4.0, color: Colors.redAccent),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                  "PLS WRITE SOME WORDS HERE RAKS",
                                                  style: GoogleFonts.frederickaTheGreat(
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w600,letterSpacing: 2,
                                                        fontSize: 16),)
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(bottom: 10)),
                                              Text(
                                                  "blah blah blah blah blah",
                                                  style: GoogleFonts.roboto(
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w300,letterSpacing: 3,
                                                        fontSize: 12),)
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: InkWell(
                                      // splashColor: Colors.deepPurpleAccent,
                                      onTap: () {
                                        launch("https://www.youtube.com/watch?v=jqXUm2YS-mM");
                                      },
                                      child: Container(
                                          padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                end: Alignment.topRight,
                                                begin: Alignment.bottomLeft,
                                                colors: [
                                                  Colors.pinkAccent,
                                                  Colors.blueGrey
                                                ]),
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(10)),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                  "VAMPIRE'S NATION|MY HANGOUT PLACE",
                                                  style: GoogleFonts.frederickaTheGreat(
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w600,letterSpacing: 2,
                                                        fontSize: 16),)
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(bottom: 10)),
                                              Text(
                                                  "It Is a Cruel Fantasy That Paradoxically Depicts The Cruelty And Violence Of A FairyTale And Reality!",
                                                  style: GoogleFonts.roboto(
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w300,letterSpacing: 3,
                                                        fontSize: 12),)
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),

                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              )
          )


    );
  }
}

