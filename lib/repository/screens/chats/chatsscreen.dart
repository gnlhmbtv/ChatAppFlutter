import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/material.dart';

import '../../../domain/constants/appcolors.dart';

class ChatsScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrchat = [
    {
      "img": "Frame 3293.png",
      "name": "Athalia Putri",
      "msg": "Good morning, did you sleep well?",
      "date": "Today",
      "msgcount": "1"
    },
    {
      "img": "Frame 3293.png",
      "name": "Athalia Putri",
      "msg": "How is it going?",
      "date": "17/6",
      "msgcount": "0"
    },
    {
      "img": "Frame 3293.png",
      "name": "Athalia Putri",
      "msg": "Aight, noted",
      "date": "17/6",
      "msgcount": "1"
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
          text: "Chats",
          fontsize: 18,
          context: context,
          fontweight: FontWeight.bold,
          fontfamily: "bold",
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.mark_chat_unread_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded))
        ],
        centerTitle: false,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              UiHelper.CustomImage(imgurl: "story1.png"),
              SizedBox(
                width: 25,
              ),
              UiHelper.CustomImage(imgurl: "story2.png"),
              SizedBox(
                width: 25,
              ),
              UiHelper.CustomImage(imgurl: "story2.png"),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              UiHelper.CustomText(
                  text: "Your Story",
                  fontsize: 10,
                  context: context,
                  fontfamily: "bold",
                  fontweight: FontWeight.bold),
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(
                  text: "Midala Hu...",
                  fontsize: 10,
                  context: context,
                  fontfamily: "bold",
                  fontweight: FontWeight.bold),
              SizedBox(
                width: 15,
              ),
              UiHelper.CustomText(
                  text: "Midala Hu...",
                  fontsize: 10,
                  context: context,
                  fontfamily: "bold",
                  fontweight: FontWeight.bold),
            ],
          ),
          Divider(
            color: Color(0XFFABD5BD),
          ),
          SizedBox(height: 10,),
          UiHelper.CustomTextField(controller: searchController, text: "Search", textinputtype: TextInputType.name, context: context, icondata: Icons.search),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ListTile(
                    leading: UiHelper.CustomImage(
                        imgurl: arrchat[index]["img"].toString()),
                    title: UiHelper.CustomText(
                        text: arrchat[index]["name"].toString(),
                        fontsize: 14,
                        context: context),
                    subtitle: UiHelper.CustomText(
                        text: arrchat[index]["msg"].toString(),
                        fontsize: 12,
                        context: context,
                        color: Color(0XFFADB5BD)),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UiHelper.CustomText(
                          text: arrchat[index]["date"].toString(),
                          fontsize: 10,
                          context: context,
                          color: Color(0XFFA4A4A4),
                        ),
                        SizedBox(height: 5,),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Color(0XFFD2D5F9),
                          child: UiHelper.CustomText(
                              text: arrchat[index]["msgcount"].toString(),
                              fontsize: 10,
                              context: context),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: arrchat.length,
            ),
          )
        ],
      ),
    );
  }
}
