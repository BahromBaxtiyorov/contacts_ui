import 'package:contacts_ui/models/contactModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget itemOfContact(BuildContext context, ContactModel contact){
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(contact.image),
              ),
              SizedBox(width: 5,),
              Container(
                width: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                      contact.name,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.grey.shade900,
                          letterSpacing: 1),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      contact.phoneNumber,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(width:35),
              SvgPicture.asset("assets/icons/Vector.svg"),
            ],
          )
        ],
      ),
    ),
  );
}