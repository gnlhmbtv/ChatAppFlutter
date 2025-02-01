import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/material.dart';

import '../../../domain/constants/appcolors.dart';

class ContactsScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContacts = [
    {
      "img":"Frame 3293.png",
      "name": "Athalia Putri",
      "lastseen": "Last seen yesterday"
    },
    {
      "img":"Frame 3293.png",
      "name": "Athalia Putri",
      "lastseen": "Last seen yesterday"
    },
    {
      "img":"Frame 3293.png",
      "name": "Athalia Putri",
      "lastseen": "Last seen yesterday"
    },
    {
      "img":"Frame 3293.png",
      "name": "Athalia Putri",
      "lastseen": "Last seen yesterday"
    },
    {
      "img":"Frame 3293.png",
      "name": "Athalia Putri",
      "lastseen": "Last seen yesterday"
    },
    {
      "img":"Frame 3293.png",
      "name": "Athalia Putri",
      "lastseen": "Last seen yesterday"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: UiHelper.CustomText(
            text: "Contacts", fontsize: 18, context: context),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            UiHelper.CustomTextField(
                controller: searchController,
                text: "Search",
                textinputtype: TextInputType.name,
                context: context,
                icondata: Icons.search),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: UiHelper.CustomImage(imgurl: arrContacts[index]["img"].toString()),
                    title: UiHelper.CustomText(text: arrContacts[index]["name"].toString(), fontsize: 14, context: context, fontweight: FontWeight.w600),
                    subtitle: UiHelper.CustomText(text: arrContacts[index]["lastseen"].toString(), fontsize: 12, context: context, color: Color(0XFFABD5BD)),
                  ),
                );
              }, itemCount: arrContacts.length,),
            )
          ],
        ),
      ),
    );
  }
}
