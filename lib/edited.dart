import 'package:flutter/material.dart';

class edited extends StatefulWidget {
  int index;
  List<String> slist;


  edited(this.slist, this.index);

  @override
  State<edited> createState() => _editedState();
}

class _editedState extends State<edited> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Back Page"),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                color: Color(0xFF6FB7F5),
                alignment: Alignment.center,
                  child: Text(
                    widget.slist[widget.index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

              )),
          Expanded(
            child: Container(
              color: Colors.black12,
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                      child: Row(children: [
                    Expanded(
                        child: Container(
                      //color: Colors.white,
                      //margin: EdgeInsets.all(10),
                      alignment: Alignment.centerRight,
                      child: IconButton(onPressed: () {},
                          icon: Icon(Icons.close)),
                    )),
                    Expanded(
                        child: Container(
                      //color: Colors.white,
                      //margin: EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.cached_rounded)),
                    )),
                  ])),
                  Expanded(
                      child: Row(children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          color: Colors.blue,
                          margin: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: Text("Font"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          color: Colors.blue,
                          margin: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: Text("Text Color"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          color: Colors.blue,
                          margin: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: Text("Text Size"),
                        ),
                      ),
                    )
                  ])),
                  Expanded(
                      child: Row(children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          color: Colors.blue,
                          margin: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: Text("BG Color"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          color: Colors.blue,
                          margin: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: Text("Emoji"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          color: Colors.blue,
                          margin: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: Text("Share"),
                        ),
                      ),
                    )
                  ]))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
