import 'package:flutter/material.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/sa.jpeg"), 
          fit: BoxFit.cover,
          opacity: 0.7,
          )
      ),
      child:Material(
        color: Colors.transparent,
      
      child: SafeArea(
        child:Padding(
          padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enjoy",
                style: TextStyle(
                  color: Colors.black12,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(height:2),
              Text(
                "Parts of South Africa!",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 35,            
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.5,
                      ),
              ),
              SizedBox(height: 12),
              Text(
                "South Africa, officially the Republic of South Africa, is the southernmost country in Africa. It is bounded to the south by 2,798 kilometres (1,739 mi) of coastline that stretches along the South Atlantic and Indian Oceans;[14][15][16] to the north by the neighbouring countries of Namibia, Botswana, and Zimbabwe; and to the east and northeast by Mozambique and Eswatini. It also completely enclaves the country Lesotho.[17] It is the southernmost country on the mainland of the Old World, and the second-most populous country located entirely south of the equator, after Tanzania.",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 16,
                  letterSpacing: 1.2,
                ),
                ),
                SizedBox(height: 30),
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>HomePage(),
                    ));
                },
                  child: Ink(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black54,
                      size:20,
                    ),
                  ),
                ),
            ],
          ),
        )),
    ),
    );
  }
}