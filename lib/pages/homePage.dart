import 'package:contacts_ui/attributes.dart';
import 'package:contacts_ui/items/contactItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Text("Contacts",
            style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700)),
       actions: [
         InkWell(
           onTap: (){},
           child: Icon(Icons.search,size:30,color:Colors.black),
         ),
         SizedBox(width:15),
         Icon(Icons.more_vert,size:30,color:Colors.black),
       ],
      ),
        body: Container(
          child: SingleChildScrollView(
            child: ListView.builder(
              shrinkWrap: true,
               itemCount: contactList.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
                return InkWell(
                    onTap: (){
                      Navigator.pushNamed(context,"/ContactProfil");
                    },
                    child: itemOfContact(context, contactList[index]));
                }),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context,"/AddContactPage");
        },
        child: Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}





// void searchedUsers(String user) {
//   searchList.clear();
//   contactList.forEach((element) {
//     if (element.name.toLowerCase().contains(user.toLowerCase())) {
//       searchList.add(element);
//     }
//   });
// }