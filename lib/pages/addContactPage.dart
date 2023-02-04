import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../attributes.dart';
import '../models/contactModel.dart';
import 'homePage.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({Key? key}) : super(key: key);

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  TextEditingController firstNameCtr = TextEditingController();
  TextEditingController lastNameCtr = TextEditingController();
  TextEditingController numberCtr = TextEditingController();
  @override
  Widget build(BuildContext context,) {
    return Scaffold(
    appBar: AppBar(
      // backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text("Add Contact", style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700)),
         actions: [
           IconButton(
             onPressed: (){
               if(firstNameCtr.text.isNotEmpty) {
                 contactList.add(ContactModel( "assets/images/i (2).webp",
                     firstNameCtr.text+' '+ lastNameCtr.text,
                     numberCtr.text));
                 Navigator.of(context)
                     .pushReplacement(
                     MaterialPageRoute(builder:(BuildContext context){
                       return HomePage();
                     })
                 );
               }
             }, icon: Icon(Icons.check),

           )
         ],
    ),
     body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500)),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: TextFormField(
                  controller: firstNameCtr,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Enter name",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          )
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide()
                      )
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Text("Surname",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500)),
              Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                  child: TextFormField(
                    controller: lastNameCtr,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        labelText: "Last name(optional)",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            )
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide()
                        )
                    ),
                  )
              ),
              SizedBox(height: 25,),
              Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                  child: TextFormField(
                    controller: numberCtr,
                    keyboardType: TextInputType.phone,
                    maxLength: 9,
                    decoration: InputDecoration(
                        labelText: "_ _  _ _ _  _ _  _ _",
                        hintText: "00 0000000",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            )
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide()
                        ),
                        prefixIcon: SizedBox(
                          width: 85,
                          child: Row(
                            children: [
                              SizedBox(width: 15,),
                              Text("+998"),
                              SizedBox(width: 3,),
                              VerticalDivider(thickness: 3,),
                            ],
                          ),
                        )
                    ),
                  )
              ),
            ],
          )
      ),
    );
  }
}
