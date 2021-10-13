import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tinder_app_flutter/data/db/entity/app_user.dart';
import 'package:tinder_app_flutter/data/provider/user_provider.dart';
import 'package:tinder_app_flutter/ui/screens/chat_screen.dart';
import 'package:tinder_app_flutter/ui/widgets/portrait.dart';
import 'package:tinder_app_flutter/ui/widgets/rounded_button.dart';
import 'package:tinder_app_flutter/ui/widgets/rounded_outlined_button.dart';
import 'package:tinder_app_flutter/util/utils.dart';

class MatchedProfile extends StatelessWidget {
  static const String id = 'matched_profile';

  final String otherUserProfilePhotoPath;
  final String otherUserId;

  MatchedProfile(
      {
        @required this.otherUserProfilePhotoPath,
        @required this.otherUserId});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
         //   vertical: 42.0,
         //   horizontal: 18.0,
          ),
          margin: EdgeInsets.only(bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Image.asset('images/tinder_icon.png', width: 40),
             // Portrait(imageUrl: otherUserProfilePhotoPath),
              Image.network(otherUserProfilePhotoPath),
            ],
          ),
        ),
      ),
    );
  }
}
