import 'package:assignment/appScreens/profileInfoScreen.dart';
import 'package:assignment/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: bblack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 30.0),
          height: height / 2 - 50,
          child: Image.asset('assets/images/mp1.png'),
          ),
        Container(
          height: height / 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
            color: sblack
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('James \nMartinia Junior', style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w700
                    )),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('Actively Looking', style: GoogleFonts.lato(
                          color: grey,
                          fontSize: 18.0
                        )),
                        SizedBox(width: 14.0),
                        CircleAvatar(
                          radius: 10.0,
                          backgroundColor: pink,
                          child: Icon(MaterialIcons.check, size: 16.0, color: bblack,),
                        )
                      ],
                    ),
                    SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text('Applied', style: GoogleFonts.lato(
                              color: grey,
                              fontSize: 14.0
                            )),
                            SizedBox(height: 4.0),
                            Text('98', style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700
                            ))
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text('Reviewed', style: GoogleFonts.lato(
                              color: grey,
                              fontSize: 14.0
                            )),
                            SizedBox(height: 4.0),
                            Text('73', style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700
                            ))
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text('Contacted', style: GoogleFonts.lato(
                              color: grey,
                              fontSize: 14.0
                            )),
                            SizedBox(height: 4.0),
                            Text('19', style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700
                            ))
                          ],
                        )
                      ],
                    )
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                  color: green
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Complete Profile', style: GoogleFonts.lato(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                        )),
                        SizedBox(height: 10.0),
                        Text('Personal | Job Experience | Certification', style: GoogleFonts.lato(
                          fontSize: 12.0,
                        ))
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14.0)),
                        color: Colors.white
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileInfoScreen()));
                        },
                      )
                    )
                  ],
                ),
              )
            ],
          ),
        )
        ],
      ),
    );
  }
}