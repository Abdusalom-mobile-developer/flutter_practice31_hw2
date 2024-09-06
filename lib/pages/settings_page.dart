import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
  });

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  Widget makeSettingOptions(
      {required String title,
      required String content,
      required bool haveBorder}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
      child: Container(
        padding: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: haveBorder ? Colors.grey[300]! : Colors.white,
                    width: haveBorder ? 2 : 0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 21),
            ),
            Row(
              children: [
                Text(
                  content,
                  style: TextStyle(fontSize: 19, color: Colors.grey[500]),
                ),
                SizedBox(
                  width: 9,
                ),
                Container(
                  margin: EdgeInsets.only(right: 6),
                  child: Icon(
                    Icons.navigate_next_rounded,
                    size: 34,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F2),
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(
              width: 7,
            ),
            Icon(
              Icons.arrow_back_ios_new,
              size: 28,
              color: Colors.grey[800],
            )
          ],
        ),
        centerTitle: true,
        title: Text("Settings",
            style: TextStyle(
                fontSize: 27,
                color: Colors.grey[700],
                fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 28, left: 15, bottom: 8),
            child: Text(
              'My Account'.toUpperCase(),
              style: TextStyle(fontSize: 16),
            ),
          ),
          makeSettingOptions(
              title: "Name", content: "Abdusalom G'ayratov", haveBorder: true),
          makeSettingOptions(
              title: "Username", content: "abdusalom_999", haveBorder: true),
          makeSettingOptions(
              title: "Birthday", content: "16-07-2005", haveBorder: true),
          makeSettingOptions(
              title: "Mobile Number",
              content: "(97)706-77-16",
              haveBorder: true),
          makeSettingOptions(title: "Email", content: "", haveBorder: true),
          makeSettingOptions(title: "Password", content: "", haveBorder: false),
          Container(
            padding: EdgeInsets.only(top: 28, left: 15, bottom: 8),
            child: Text(
              'App Settings'.toUpperCase(),
              style: TextStyle(fontSize: 16),
            ),
          ),
          makeSettingOptions(
              title: "Apperance", content: "Light", haveBorder: true),
          makeSettingOptions(
              title: "Accessibility", content: "", haveBorder: true),
          makeSettingOptions(
              title: "Language", content: "English, USA", haveBorder: true),
          makeSettingOptions(
              title: "Text & Images", content: "", haveBorder: false),
        ],
      )),
    );
  }
}
