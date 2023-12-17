import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moncv/service.dart';

class ExperiencePage extends GetView<LanguageTranslation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title".tr),
        actions: [
          DropdownButton(
            hint: Text(
              "langue".tr,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            items: [
              buildDropItem("English", "en"),
              buildDropItem("Francais", "fr"),
              buildDropItem("عربى", "ar")
            ],
            onChanged: (value) {
              Get.updateLocale(Locale(value));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildSection(' ', [
              buildExperience('stageTitle1'.tr, 'duration'.tr),
              buildExperience('stageTitle2'.tr, 'duration'.tr),
            ]),
          ],
        ),
      ),
    );
  }

  Widget buildSection(String title, List<Widget> content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontSize: 24, color: Colors.lightGreen, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: content,
        ),
        SizedBox(height: 20.0),
      ],
    );
  }

  Widget buildExperience(String title, String duration) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 18, color: Colors.cyan, fontWeight: FontWeight.bold),
          ),
          Text(
            '$title : $duration',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  DropdownMenuItem buildDropItem(String langue, String value) {
    return DropdownMenuItem(
      value: value,
      child: Text(
        langue,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}