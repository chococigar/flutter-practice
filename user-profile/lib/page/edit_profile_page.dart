import 'package:flutter/material.dart';
import 'package:user_profile/model/user.dart';
import 'package:user_profile/utils/user_preferences.dart';
import 'package:user_profile/widget/profile_widget.dart';
import 'package:user_profile/widget/textfield_widget.dart';

import '../appbar_widget.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: buildAppBar(context),
    body: ListView(
      padding: EdgeInsets.symmetric(horizontal: 32),
      physics: BouncingScrollPhysics(),
      children: [
        ProfileWidget(
          imagePath: user.imagePath,
          isEdit: true,
          onClicked: () async {},
        ),
        const SizedBox(height: 24),
        TextFieldWidget(
          label: 'Full Name',
          text: user.name,
          onChanged: (name) {},
        ),
      ],
    ),
  );
}