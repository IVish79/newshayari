import 'package:flutter/material.dart';
import 'package:newshayari/first.dart';
import 'package:newshayari/model.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHAYARI mixx", style: TextStyle(fontSize: 26,),textAlign: TextAlign.center,),
      ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              elevation: 15,
              margin: EdgeInsets.all(15),
              color: Color(0xFF6FB7F5),            //Colors.orange[300],

              child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return first(index);
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

             image: DecorationImage(image: AssetImage(model().image[index]),fit: BoxFit.fill)),

            ),
            title: Text(model().category[index],),//textAlign: TextAlign.center),

            ),

           );
          },
          itemCount: model().category.length,
        ));
  }
}





// leading: Container(
// height: 50,
// width: 50,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
//
// image: DecorationImage(image: AssetImage(model().name[index]),fit: BoxFit.fill)),
//
// title: Text(model().name[index]),
// trailing: IconButton(onPressed: () {
//
// }, icon: Icon(Icons.arrow_forward_ios))),
//
