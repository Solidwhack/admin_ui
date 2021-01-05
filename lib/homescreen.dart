import 'package:admin_ui/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children:<Widget> [
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Row(),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Text("Good Morning", style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                  Text("Mirza", style: GoogleFonts.inter(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.deepOrange
                  ))
                ],
              ),
            ),
            Divider(color: Colors.black,),
            Padding(
              padding:  EdgeInsets.only(left:16, bottom:13, top:18),
              child: Row(
                children:<Widget> [Text('Operations', style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ))],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19,top: 20),
                child: Row(
                  children:<Widget> [
                    Card(
                      child: InkWell(
                        splashColor: Colors.cyan.withAlpha(30),
                        onTap: (){
                          print("Card Tapped");
                        },
                        child: Container(
                            width: 180,
                            height: 100,
                            color: Colors.white60,
                              child: Icon(Icons.data_usage, size: 80.0, color: Colors.deepOrange,),
                      ),
                     ),
                    ),
                    new Card(
                        child: InkWell(
                          splashColor:Colors.cyan.withAlpha(30),
                          onTap: (){
                            print("tapped");
                          },
                          child: Container(
                            width: 180,
                            height: 100,
                            color: Colors.white60,
                            child: Icon(Icons.sticky_note_2, size: 80.0, color: Colors.deepOrange,),
                          ),
                        )
                    )
                  ],
                ),

              ),
          ]
        ),
      ),
    );
  }
}
