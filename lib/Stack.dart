import 'package:flutter/material.dart';

class StackDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _StackDemo();
  }

}
class _StackDemo extends State<StackDemo> {

  TextEditingController _stackController = new TextEditingController();

  List<int> stack = new List<int>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(child: Text("Enter a number to push")),
                TextFormField(
                  controller: _stackController,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/star.jpg"),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                        colorFilter: ColorFilter.mode( Colors.black87.withOpacity(0.4), BlendMode.darken)
                    ),
                  ),),
                Padding(padding: EdgeInsets.all(10),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton.icon(
                        label: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Push" ),
                        ),
                        icon: Icon(
                          Icons.move_to_inbox,
                          color: Colors.lightBlueAccent,
                        ),
                        onPressed: (){
                          stack.add(int.parse(_stackController.text));
                          print(stack.toString());
                          setState(() {

                          });
                        }
                    ),
                    Padding(padding: EdgeInsets.all(10),),
                    RaisedButton.icon(
                        label: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Pop"),
                        ),
                        icon: Icon(
                          Icons.remove,
                          color: Colors.lightBlueAccent,
                        ),
                        onPressed: (){
                          stack.removeLast();
                          print(stack.toString());
                          setState(() {

                          });
                        }
                    )
                  ],
                ),
                Center(child: Text("Elements in the stack are:")),
                Padding(padding: EdgeInsets.all(20),),
                Column(
                  children: returnStackElements(),
                )

              ],
            ),

      ),
    );
  }
  List<Widget> returnStackElements(){
    List<Widget> elementsToReturn = [];
    stack.forEach((element) {
      elementsToReturn.add(
          Text(element.toString())
      );
    });
    return elementsToReturn;
  }
}