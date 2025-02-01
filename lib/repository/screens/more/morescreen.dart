import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/constants/appcolors.dart';


class MoreScreen extends StatelessWidget {
  var arrMore = [
    {
      "icon": Icons.person,
      "txt" : "Account"
    },
    {
      "icon": CupertinoIcons.chat_bubble_fill,
      "txt" : "Chat"
    },
    {
      "icon": Icons.notifications_active,
      "txt" : "Notifications"
    },
    {
      "icon": Icons.privacy_tip,
      "txt" : "Privacy"
    },
    {
      "icon": Icons.notifications_active,
      "txt" : "Notifications"
    },
    {
      "icon": Icons.privacy_tip,
      "txt" : "Privacy"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: UiHelper.CustomText(text: "More", fontsize: 18, context: context, fontweight: FontWeight.bold, fontfamily: "bold"),
        centerTitle: false,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Theme.of(context).brightness == Brightness.dark ? UiHelper.CustomImage(imgurl: "Frame 3291.png") : UiHelper.CustomImage(imgurl: "Frame 3291.png"),
            title: UiHelper.CustomText(text: "Sujal Dave", fontsize: 14, context: context, fontfamily: "bold", fontweight: FontWeight.bold),
            subtitle: UiHelper.CustomText(text: "+62 1309 - 1710 - 1920", fontsize: 12, context: context),
            trailing: IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.forward)),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(arrMore[index]["icon"] as IconData),
                title: UiHelper.CustomText(text: arrMore[index]["txt"].toString(), fontsize: 14, context: context),
                trailing: Icon(CupertinoIcons.forward),
              );
            }, itemCount: arrMore.length,),
          )
        ],
      ),
    );
  }
}
