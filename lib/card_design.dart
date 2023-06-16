import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'core/constants/app_images.dart';
import 'core/constants/strings.dart';
import 'core/constants/app_styles.dart';

class CardDesign extends StatelessWidget {
  const CardDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(Strings.myApp),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(AppImages.lightPic),
                radius: 80,
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(Strings.name, style: AppStyles.mainHeading),
                  Text(
                    Strings.myName,
                    style: AppStyles.subHeading,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(Strings.rollNo, style: AppStyles.mainHeading),
                  Text(
                    Strings.rollNoValue,
                    style: AppStyles.subHeading,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(Strings.id, style: AppStyles.mainHeading),
                  Text(
                    Strings.idValue,
                    style: AppStyles.subHeading,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(Strings.contactInfo, style: AppStyles.mainHeading),
                  GestureDetector(
                      onTap: () {
                        callToNumber(domain: Strings.contactInfoValue);
                      },
                      child: const Text(
                        Strings.contactInfoValue,
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      )),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(Strings.dateOfBirth, style: AppStyles.mainHeading),
                  Text(
                    Strings.dateOfBirthValue,
                    style: AppStyles.subHeading,
                  ),
                ],
              ),
            ],
          ),
        ) //Image.asset("assets/profile.jpg"),

        );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  callToNumber({required String domain}) async {
    String url = 'https://$domain';

    try {
      launchUrl(Uri.parse(url));
    } catch (e) {
      print("Could not launch url");
    }
  }
}
