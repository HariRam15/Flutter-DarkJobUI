import 'package:assignment/constant.dart';
import 'package:flutter/material.dart';

class JobCat {
  Icon icon;
  String title, noJobs;
  Color color;

  JobCat({this.icon, this.title, this.noJobs, this.color});
}

List<JobCat> jobcat = [
  JobCat(
    icon: Icon(Icons.person),
    title: 'Design',
    noJobs: '3.2k Jobs',
    color: yellow
  ),
  JobCat(
    icon: Icon(Icons.network_cell),
    title: 'Network',
    noJobs: '2.8k Jobs',
    color: pink
  ),
  JobCat(
    icon: Icon(Icons.security),
    title: 'Security',
    noJobs: '4.3k Jobs',
    color: blue
  )
];