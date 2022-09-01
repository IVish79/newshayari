import 'package:flutter/material.dart';
import 'package:newshayari/model.dart';
import 'package:newshayari/second.dart';

class first extends StatefulWidget {

  int index;

  first(this.index);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  List<String> slist = [];


  @override
  void initState() {
super.initState();

      if(widget.index==0)
      {
          slist = model().Love;
      } else if(widget.index==1)
      {
          slist = model().Friendship;
      } else if(widget.index==2)
      {
          slist = model().Birthday;
      } else if(widget.index==3)
      {
        slist = model().Life;
      } else if(widget.index==4)
      {
        slist = model().Romantic;
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
  title: Text(model().category[widget.index]),
),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            elevation: 15,
            margin: EdgeInsets.all(15),
            color:Color(0xFF6FB7F5),
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return second(slist, index);
                  },
                ));
              },
              leading: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.white,  //(0xB5FFF9F9),
                        width: 3,
                        style: BorderStyle.solid
                    ),


                    image: DecorationImage(image: AssetImage(model().image[widget.index]),fit: BoxFit.fill)),

              ),

              title: Text(slist[index], maxLines: 1,),
            ),
          );
        },
        itemCount: slist.length,
      ),
    );
  }
}
