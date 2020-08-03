import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slimy_card/slimy_card.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.pinkAccent,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarDividerColor: Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(LoginPg());
}
class LoginPg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingleChildScrollView(
        child:Column(
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
        ),],
      ),),
    );
  }
}
class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Login();
  }
}
class _Login extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(

                initialData: false,
                stream: slimyCard.stream, //Stream of SlimyCard
                builder: ((BuildContext context, AsyncSnapshot snapshot) {
                  return ListView(

                      padding: EdgeInsets.zero,
                      children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(height: 50, width : 50),
                    ),
                    SlimyCard(
                      slimeEnabled: true,
                      F
                      topCardWidget: topCardWidget(),
                      bottomCardWidget: bottomCardWidget(),
                    ),
                  ]);
                })),
    );
  }
  // This widget will be passed as Top Card's Widget.
  Widget topCardWidget()  {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
        CircleAvatar(
        radius: 50.0,
        backgroundImage: AssetImage('images/love.jpg'),
        ),

          Center(
            child: Container(
              alignment: Alignment.center,
              height: 60.0,
              child: TextField(
                obscureText: true,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  hintText: 'Enter your Username',
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 60.0,
              child: TextField(
                obscureText: true,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  hintText: 'Enter your Password',
                ),
              ),
            ),
          ),
        ],
    );
  }



  }
  // This widget will be passed as Bottom Card's Widget.
  Widget bottomCardWidget({height: 50}) {
    return RaisedButton.icon(
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("LOGIN",textAlign: TextAlign.center ,
                style: TextStyle(
                color: Colors.black,
                fontFamily: "BebasNeue-Regular",
                fontWeight: FontWeight.w600,letterSpacing: 3,
                fontSize: 10),),
        ),
        icon: Icon(
          Icons.vpn_key,
          color: Colors.white,
        ),
        onPressed: (){

        }
    );
  }
