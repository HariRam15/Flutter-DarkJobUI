import 'package:assignment/appScreens/profileScreen.dart';
import 'package:assignment/widgets/categories.dart';
import 'package:assignment/widgets/jobCatergory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: bblack,
        leading: IconButton(
          icon: Icon(MaterialIcons.menu),
          onPressed: () {},
        ),
      ),
      body: Container(
        height: height,
        width: width,
        color: bblack,
        padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 20.0),
        child: ListView(
          children: <Widget>[
            Text("Find the World\'s most", style: GoogleFonts.lato(color: Colors.white, fontSize: 26.0)),
            Text('Amazing Job', style: GoogleFonts.lato(color: Colors.white, fontSize: 26.0, fontWeight: FontWeight.w700)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24.0),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: sblack,
                borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              child: Row(
                children: <Widget>[
                  Icon(Icons.search, color: Colors.white, size: 30.0),
                  SizedBox(width: 8.0),
                  Expanded(
                  child: TextField(
                    cursorColor: grey,
                      decoration: InputDecoration(
                        labelText: 'Search for jobs',
                        labelStyle: GoogleFonts.lato(color: mudBlack, fontSize: 20.0)
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: bblack,
                      borderRadius: BorderRadius.all(Radius.circular(8.0))
                    ),
                    child: Icon(MaterialIcons.sort, color: Colors.white),
                  )
                ],
              ),
            ),
            Text('Job Matched', style: GoogleFonts.lato(color: Colors.white, fontSize: 20.0)),
            SizedBox(height: 16.0),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
                  child: Container(
                  padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14.0)),
                      color: green
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          Text('Master Card', style: GoogleFonts.lato(fontSize: 12.0, fontWeight: FontWeight.bold)),
                          Container(
                            height: 24.0,
                            child: Image.asset('assets/images/mc1.png'),
                          )
                          ],
                        ),
                        Text('Sr. Product Designer', style: GoogleFonts.lato(fontSize: 20.0, fontWeight: FontWeight.bold)),
                        SizedBox(height: 16.0),
                        Row(
                          children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(5.0),
                            height: 20.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.white
                            ),
                            child: Text('User Interface', style: GoogleFonts.lato(fontSize: 8.0, fontWeight: FontWeight.w900),),
                          ),
                      SizedBox(width: 10.0),
                      Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(5.0),
                            height: 20.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.white
                            ),
                            child: Text('User Research / Flow', style: GoogleFonts.lato(fontSize: 8.0, fontWeight: FontWeight.w900),),
                          )
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          children: <Widget>[
                          Icon(MaterialIcons.alarm, color: bblack, size: 18.0),
                          SizedBox(width: 6.0),
                          RichText(
                            text: TextSpan(
                              text: 'Be in the first', style: GoogleFonts.lato(color: bblack, fontSize: 14.0, fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(text: ' 31 applicants', style: GoogleFonts.lato(color: bblack, fontSize: 14.0, fontWeight: FontWeight.w900))
                              ]
                            ),
                          )
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          Container(
                            width: width / 3,
                            child: Stack(
                              children: <Widget>[
                                buildCircleAvatar('assets/images/p1.jpg'),
                                Positioned(
                                  left: 24.0,
                                  child: buildCircleAvatar('assets/images/p2.jpg')
                                ),
                                Positioned(
                                  left: 48.0,
                                  child: buildCircleAvatar('assets/images/p3.jpg')
                                ),
                                Positioned(
                                  left: 72.0,
                                  child: CircleAvatar(
                                  radius: 15.0,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                  radius: 14.0,
                                  backgroundColor: Colors.black,
                                  child: Text('28', style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold
                                  )),                                
                                  ),
                                )
                                )
                              ],
                            ),
                          ),
                          Text('6 Hours Ago', style: GoogleFonts.lato(
                            fontSize: 12.0, color: Colors.black, fontWeight: FontWeight.bold
                          ))
                          ],
                        )
                      ],
                    ),
                  ),
            ),
            SizedBox(height: 24.0),
            Text('Job Category', style: GoogleFonts.lato(color: Colors.white, fontSize: 20.0)),
            SizedBox(height: 20.0),
            Container(
              height: 140.0,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: jobcat.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Row(
                    children: <Widget>[
                      JobCategory(jobCat: jobcat[index]),
                      SizedBox(width: 8.0)
                    ],
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatar(String image) {
    return CircleAvatar(
      radius: 15.0,
      backgroundColor: Colors.white,
      child: CircleAvatar(
      radius: 14.0,
      foregroundColor: Colors.white,
      backgroundImage: AssetImage(image),
      ),
    );
  }
}

