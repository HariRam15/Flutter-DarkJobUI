import 'package:assignment/widgets/categories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobCategory extends StatelessWidget {
  final Icon icon;
  final String title;
  final String noJobs;
  final Color color;
  final JobCat jobCat;
  const JobCategory({
    Key key, this.color, this.noJobs, this.title, this.icon, this.jobCat
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.0),
      height: 140,
      decoration: BoxDecoration(
        color: jobCat.color,
        borderRadius: BorderRadius.all(Radius.circular(12.0))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 30,
            width: 30,
            margin: EdgeInsets.symmetric(vertical: 4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              color: Colors.white
            ),
            child: jobCat.icon,
          ),
          Text(jobCat.title, style: GoogleFonts.lato(
            fontSize: 12.0
          )),
          Text(jobCat.noJobs, style: GoogleFonts.lato(
            fontSize: 14.0, fontWeight: FontWeight.w900
          )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 4.0),
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 14.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              color: Colors.black
            ),
            child: Text('View Jobs', style: GoogleFonts.lato(
                  color: Colors.white, fontSize: 10.0
                )),
          )
        ],
      ),
    );
  }
}
