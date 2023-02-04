import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactProfil extends StatefulWidget {
  const ContactProfil({Key? key}) : super(key: key);

  @override
  State<ContactProfil> createState() => _ContactProfilState();
}

class _ContactProfilState extends State<ContactProfil> {
  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts",
        style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),),
        actions: [
          Icon(Icons.search,size:30,color:Colors.black),
          Icon(Icons.more_vert,size:30,color:Colors.black),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("dadadadsa"),
                  SvgPicture.asset("add.svg",),
                  SizedBox(width: 20,),
                  SvgPicture.asset("Vector (4).svg"),
                  SizedBox(width: 20,),
                  SvgPicture.asset("Vector (5).svg"),
                ],
              ),
            ),
            Row(
              children: [
                SvgPicture.asset("assets/icons/Ellipse 2.svg"),
                SvgPicture.asset("assets/icons/Vector (6).svg"),
              ],
            )
          ],
        ),
      )
    );
  }
}
