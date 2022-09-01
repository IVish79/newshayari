import 'package:flutter/material.dart';
import 'package:newshayari/edited.dart';
import 'package:newshayari/model.dart';

class second extends StatefulWidget {
  List<String> slist;
  int index;

  second(this.slist, this.index);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {

  PageController pageController = PageController();


  @override
  void initState() {
    super.initState();

    pageController = PageController(initialPage: widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Back Page"),
    ),
    body: SafeArea(
      child: Column(
        children: [
      Container(
        height: 50,
        color: Color(0xFF6FB7F5),
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,

        child: Text("${widget.index+1} / ${widget.slist.length}",style: TextStyle(fontSize: 20,),textAlign: TextAlign.center,),
      ),
      Expanded(
       child: PageView.builder(controller: pageController,
         onPageChanged: (value) {
         setState(() {
           print(value);
           widget.index = value;
         });
       },
         itemCount: widget.slist.length,
         itemBuilder: (context, index) {
         return  Container(
         width: double.infinity,
         margin: EdgeInsets.all(10),
         color: Color(0xFF6FB7F5),
         alignment: Alignment.center,
         child: Text("${widget.slist[widget.index]}", style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),textAlign: TextAlign.center));
       },),
       ),
      Container(
        height: 100,
        color: Color(0xFF6FB7F5),
        width: double.infinity,
        margin: EdgeInsets.all(10),
        //alignment: Alignment.center,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: ( ) {
              if(widget.index > 0)
                {
                 setState(() {
                   widget.index--;
                   pageController.jumpToPage(widget.index);
                 });
                }
            }, //tooltip: "BACK",

               // hoverColor: Colors.blue,
                icon: Icon(Icons.arrow_back_ios)),

            IconButton(onPressed: () {

            }, icon: Icon(Icons.copy)),

            IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return edited(widget.slist,widget.index);
                },));
            }, icon: Icon(Icons.edit)),

            IconButton(onPressed: () {

            }, icon: Icon(Icons.share)),

            IconButton(onPressed: () {
              if(widget.index < widget.slist.length -1)
              {
                setState(() {

                  widget.index++;
                  pageController.jumpToPage(widget.index);

                });
              }
            }, icon: Icon(Icons.arrow_forward_ios)),
          ],
        ),
      //   decoration: BoxDecoration(
      //     shape: BoxShape.circle,
      //     border: Border.all(
      //         color: Colors.white,  //(0xB5FFF9F9),
      //         width: 3,
      //         style: BorderStyle.solid ),
      // ),
      ),
      ],
    ),
    ));
  }


}




/*

// ok file


import 'package:flutter/material.dart';
import 'package:newshayari/edited.dart';

class second extends StatefulWidget {
  List<String> slist;
  int index;

  second(this.slist, this.index);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Column(
        children: [
      Container(
        height: 50,
        color: Color(0xFF6FB7F5),
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),

        child: Text("${widget.index+1} / ${widget.slist.length}",style: TextStyle(fontSize: 20,),textAlign: TextAlign.center,),
      ),
      Expanded(
        child: Container(

          width: double.infinity,
          margin: EdgeInsets.all(10),
          color: Color(0xFF6FB7F5),
          alignment: Alignment.center,
          child: Text("${widget.slist[widget.index]}", style: TextStyle(fontSize: 26,),textAlign: TextAlign.center)),
       ),
      Container(
        height: 100,
        color: Color(0xFF6FB7F5),
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            IconButton(onPressed: ( ) {
              if(widget.index > 0)
                {
                 widget.index--;
                 setState(() {});
                }
            }, tooltip: "BACK",
                hoverColor: Colors.blue,
                icon: Icon(Icons.arrow_back_ios)),
            IconButton(onPressed: () {

            }, icon: Icon(Icons.copy)),
            IconButton(onPressed: () {

            }, icon: Icon(Icons.edit)),
            IconButton(onPressed: () {

            }, icon: Icon(Icons.share)),
            IconButton(onPressed: () {
              if(widget.index < widget.slist.length -1)
              {
                widget.index++;
                setState(() {});
              }
            }, icon: Icon(Icons.arrow_forward_ios)),
          ],
        ),
      //   decoration: BoxDecoration(
      //     shape: BoxShape.circle,
      //     border: Border.all(
      //         color: Colors.white,  //(0xB5FFF9F9),
      //         width: 3,
      //         style: BorderStyle.solid ),
      // ),
      ),
      ],
    ),
    ));
  }


}





 */






/*

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10),

                    child: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                    alignment: Alignment.centerRight,
                  )),
              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    child: Text("${widget.index + 1}/${widget.slist.length}"),
                  )),
              Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 50),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.cached_rounded)),
                    alignment: Alignment.centerLeft,
                  ))
            ]),
          ),
          Expanded(
              flex: 5,
              child: Container(
                color: Colors.orange[300],
                alignment: Alignment.topCenter,
                margin: EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                    title: Text(

                      widget.slist[widget.index],
                      style: TextStyle(color: Colors.black),
                    ),
                    autofocus: true),
              )),
          Expanded(
            child: Row(children: [
              Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 50),
                    child: IconButton(
                        onPressed: () {
                          if (widget.index > 0) {
                            widget.index--;
                            setState(() {});
                          }
                        },
                        icon: Icon(Icons.arrow_back_ios)),
                    alignment: Alignment.centerRight,
                  )),
              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return edited(widget.slist, widget.index);
                            },
                          ));
                        },
                        icon: Icon(
                          Icons.camera,
                        )),
                  )),
              Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 50),
                    child: IconButton(
                        onPressed: () {
                          if (widget.index < widget.slist.length - 1) {
                            widget.index++;
                          }
                          setState(() {});
                        },
                        icon: Icon(Icons.arrow_forward_ios)),
                    alignment: Alignment.centerLeft,
                  ))
            ]),
          ),
        ],
      ),
    );
  }


}


 */