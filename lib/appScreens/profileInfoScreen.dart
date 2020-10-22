import 'package:assignment/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xlive_switch/xlive_switch.dart';

class ProfileInfoScreen extends StatefulWidget {
  @override
  _ProfileInfoScreenState createState() => _ProfileInfoScreenState();
}

class _ProfileInfoScreenState extends State<ProfileInfoScreen> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: bblack,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: bblack,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        width: width,
        margin: EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          color: sblack,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 30.0,
                    child: Image.asset('assets/images/mc1.png')
                  ),
                  SizedBox(height: 10.0),
                  Text('Product Designer', style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700
                  )),
                  SizedBox(height: 10.0),
                  Text('Master Card', style: GoogleFonts.lato(
                    color: yellow,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700
                  )),
                  SizedBox(height: 10.0),
                  Text('1600 Amphitheatre Parkway, Mountain View', style: GoogleFonts.lato(
                    color: grey,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500
                  )),
                  SizedBox(height: 30.0),
                  Container(
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Job Description', style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700
                        )),
                        SizedBox(height: 10.0),
                        Text("We\'re a team of youthfull, intelligent and dedicated creatives who have an unrivaled energy and passion for crafting beautiful and meaningful products.\n\nWe strive to follow all UX processes of ideation, research and MVP for our product designs to enable output that is both asethetic and strategic.", style: GoogleFonts.lato(
                          color: grey,
                          fontSize: 14.0,
                        )),
                        SizedBox(height: 16.0),
                        Text('Resposibilities', style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700
                        )),
                        SizedBox(height: 10.0),
                        Text("Keep the interface beautiful and easy to use.", style: GoogleFonts.lato(
                          color: grey,
                          fontSize: 14.0,
                        )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                color: yellow
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Earn Skill Badge', style: GoogleFonts.lato(
                              color: bblack,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold
                            )),
                            SizedBox(height: 4.0),
                            Text('Skills assessments help you to stand\nOut to recruiters', style: GoogleFonts.lato(
                              color: bblack,
                              fontSize: 14.0,
                            ))
                          ],
                        ),
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(16.0))
                          ),
                          child: Icon(Icons.arrow_forward, size: 18.0),
                        )
                      ],
                    )
                  ),
                  Container(
                    padding: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                      color: blue
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Similar Job Alert', style: GoogleFonts.lato(
                              color: bblack,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold
                            )),
                            SizedBox(height: 4.0),
                            Text('Product Designer, Typography, Google LLC', style: GoogleFonts.lato(
                                  color: bblack,
                                  fontSize: 14.0,
                                ))
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.all(1.0),
                          height: 16.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                          child: CircleAvatar(
                            radius: 8.0,
                            backgroundColor: bblack,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}