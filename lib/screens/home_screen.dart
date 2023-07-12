import 'package:alubank/components/sections/accoount_actions.dart';
import 'package:alubank/components/sections/account_points.dart';
import 'package:alubank/components/sections/header.dart';
import 'package:alubank/components/sections/recent_activity.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({ super.key });

   @override
   Widget build(BuildContext context) {
       return const Scaffold(
           body: SingleChildScrollView(
             child: Column(
               children: <Widget>[
                 Header(),
                 RecentActivity(),
                 AccoountActions(),
                 AccountPoints(),
               ],
             ),
           ),
       );
  }
}