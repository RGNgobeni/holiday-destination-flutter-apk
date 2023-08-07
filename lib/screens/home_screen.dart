import 'package:flutter/material.dart';

import '../widgets/home_app_bar.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
   
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: HomeBar(), 
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    children: [
                      Expanded(child: Container(
                        height: 200,
                        child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,

                          itemBuilder: (BuildContext context, int index){
                         return InkWell(
                         onTap: (){},
                         child: Container(
                          width: 160,
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:BorderRadius.circular(15) ,
                          image: DecorationImage(
                            //cape.jpeg
                            image: AssetImage("images/city${index+1}"),
                            fit: BoxFit.cover,
                            opacity: 0.7,
                          ),
                          ),
                          child: Column(children: [
                            Container(alignment: Alignment.topRight,
                            child: Icon(
                              Icons.bookmark_add_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                            ),
                            Spacer(),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Cape Town",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ), 
                              ),
                          ],)
                         ),
                         ); 
                        }
                        ),
                      )),
                    ],
                  )
                ]),
              ),
              ),
            ),
        );
    
  }
}