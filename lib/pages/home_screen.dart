import 'package:flutter/material.dart';
import 'package:google/utils/colors.dart';
import 'package:google/utils/icons.dart';
import 'package:google/widgets/setting.dart';
import 'package:google/widgets/shortcut.dart';
import 'package:google/widgets/switchButton.dart';

import '../responsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SizedBox sizeBoxWidth10 = SizedBox(width: 10);
  bool switchValue = false;
  String _chosenValue = "Rim";
  String _languagechosenValue = "English Us";
  bool mouseRegion = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          switchValue ? DarkColor.KscaffoldColor : LightColor.KScaffoldColor,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (Responsive.isMobile(context)) menuIcon,
                      if (!Responsive.isMobile(context))
                        Row(
                          children: [
                            menuIcon,
                            sizeBoxWidth10,
                            Text(
                              "Google Store",
                              style: TextStyle(
                                fontSize: 18,
                                color: switchValue
                                    ? DarkColor.KtextColor
                                    : LightColor.KtextColor,
                              ),
                            ),
                            sizeBoxWidth10,
                            Container(
                              height: 30,
                              width: 2,
                              color: Color(0xff698A91),
                            ),
                            sizeBoxWidth10,
                            locationIcon,
                            sizeBoxWidth10,
                            Text(
                              "VietNam",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18,
                                color: switchValue
                                    ? DarkColor.KtextColor
                                    : LightColor.KtextColor,
                              ),
                            )
                          ],
                        ),
                      Row(
                        children: [
                          Text(
                            switchValue? "Light" : "Dark",
                            style: TextStyle(
                              fontSize: 18,
                              color: switchValue
                                  ? DarkColor.KtextColor
                                  : LightColor.KtextColor,
                            ),
                          ),
                          SwitchButton(
                            onChanged: (value) {
                              setState(() {
                                switchValue = value;
                              });
                            },
                            switchValue: switchValue,
                          ),
                          Material(
                            elevation: 2,
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              height: 35,
                              width: 150,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: switchValue
                                    ? DarkColor.KsearchColor
                                    : LightColor.KsearchColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: DropdownButton<String>(
                                dropdownColor: switchValue
                                    ? DarkColor.KscaffoldColor
                                    : LightColor.KScaffoldColor,
                                value: _chosenValue,
                                icon: Icon(
                                  Icons.expand_more,
                                  color: switchValue
                                      ? DarkColor.KtextColor
                                      : LightColor.KtextColor,
                                ),
                                elevation: 0,
                                underline: Container(
                                  color: Color(0xff212834),
                                ),
                                style: TextStyle(
                                  color: switchValue
                                      ? DarkColor.KtextColor
                                      : LightColor.KtextColor,
                                ),
                                items: <String>[
                                  "Rim",
                                
                                ].map<DropdownMenuItem<String>>(
                                  (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(3.0),
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                "images/user.png",
                                              ),
                                            ),
                                          ),
                                          Text(value),
                                        ],
                                      ),
                                    );
                                  },
                                ).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _chosenValue = newValue!;
                                  });
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  flex: Responsive.isMobile(context) ? 4 : 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      googleIcon,
                      if (!Responsive.isMobile(context))
                        Material(
                          elevation: 2,
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                          child: TextFormField(
                            style: TextStyle(
                              color: switchValue
                                  ? DarkColor.KtextColor
                                  : LightColor.KtextColor,
                            ),
                            decoration: InputDecoration(
                              hintText: "Search ...",
                              hintStyle: TextStyle(
                                color: switchValue
                                    ? DarkColor.KhintTextColor
                                    : LightColor.KtextColor,
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.blue,
                                ),
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Expanded(
                                  child: CircleAvatar(
                                    backgroundColor: switchValue
                                        ? DarkColor.KgoogleMicColor
                                        : LightColor.KgoogleMicColor,
                                    child: googleMic,
                                  ),
                                ),
                              ),
                              fillColor: switchValue
                                  ? DarkColor.KsearchColor
                                  : LightColor.KsearchColor,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(
                                  30,
                                ),
                              ),
                            ),
                          ),
                        ),
                      if (Responsive.isMobile(context))
                        Material(
                          elevation: 2,
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                          child: TextFormField(
                            style: TextStyle(
                              color: switchValue
                                  ? DarkColor.KtextColor
                                  : LightColor.KtextColor,
                            ),
                            decoration: InputDecoration(
                              hintText: "Search ...",
                              hintStyle: TextStyle(
                                color: switchValue
                                    ? DarkColor.KhintTextColor
                                    : LightColor.KtextColor,
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.blue,
                                ),
                              ),
                              fillColor: switchValue
                                  ? DarkColor.KsearchColor
                                  : LightColor.KsearchColor,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(
                                  30,
                                ),
                              ),
                            ),
                          ),
                        ),
                      if (Responsive.isMobile(context))
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: switchValue
                                  ? DarkColor.KgoogleMicColor
                                  : LightColor.KgoogleMicColor,
                              child: googleMic,
                            ),
                          ],
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ShortCut(
                            child: youtubeIcon,
                            switchValue: switchValue,
                          ),
                          ShortCut(
                            child: mailIcon,
                            switchValue: switchValue,
                          ),
                          ShortCut(
                            child: driveIcon,
                            switchValue: switchValue,
                          ),
                          ShortCut(
                            child: meetIcon,
                            switchValue: switchValue,
                          ),
                          ShortCut(
                            child: languageIcon,
                            switchValue: switchValue,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
          if (Responsive.isDesktop(context))
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.info,
                          color: switchValue
                              ? DarkColor.KtextColor
                              : LightColor.KtextColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings,
                          color: switchValue
                              ? DarkColor.KtextColor
                              : LightColor.KtextColor,
                        ),
                      ),
                      Material(
                        elevation: 2,
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: 35,
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: switchValue
                                ? DarkColor.KsearchColor
                                : LightColor.KsearchColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: DropdownButton<String>(
                            dropdownColor: switchValue
                                ? DarkColor.KscaffoldColor
                                : LightColor.KScaffoldColor,
                            value: _languagechosenValue,
                            icon: Icon(
                              Icons.expand_more,
                              color: switchValue
                                  ? DarkColor.KtextColor
                                  : LightColor.KtextColor,
                            ),
                            elevation: 0,
                            underline: Container(
                              color: Color(0xff212834),
                            ),
                            style: TextStyle(
                              color: switchValue
                                  ? DarkColor.KtextColor
                                  : LightColor.KtextColor,
                            ),
                            items: <String>[
                              "English Us",
                              "Email UK",
                              "Hindi",
                              "Vietnamese",
                            ].map<DropdownMenuItem<String>>(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              },
                            ).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _languagechosenValue = newValue!;
                              });
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Setting(
                        mouseRegion: mouseRegion,
                        onEnter: (event) {
                          setState(() {
                            mouseRegion = true;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            mouseRegion = false;
                          });
                        },
                        switchValue: switchValue,
                        text: "Privacidad",
                      ),
                      sizeBoxWidth10,
                      Setting(
                        mouseRegion: mouseRegion,
                        onEnter: (event) {
                          setState(() {
                            mouseRegion = true;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            mouseRegion = false;
                          });
                        },
                        switchValue: switchValue,
                        text: "Condiciones",
                      ),
                      sizeBoxWidth10,
                      Setting(
                        mouseRegion: mouseRegion,
                        onEnter: (event) {
                          setState(() {
                            mouseRegion = true;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            mouseRegion = false;
                          });
                        },
                        switchValue: switchValue,
                        text: "Preferencias",
                      )
                    ],
                  )
                ],
              ),
            )),
          if (Responsive.isMobile(context))
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.info,
                      color: switchValue
                          ? DarkColor.KtextColor
                          : LightColor.KtextColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      color: switchValue
                          ? DarkColor.KtextColor
                          : LightColor.KtextColor,
                    ),
                  ),
                  sizeBoxWidth10,
                  Material(
                    elevation: 2,
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: 35,
                      width: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: switchValue
                            ? DarkColor.KsearchColor
                            : LightColor.KsearchColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: DropdownButton<String>(
                        dropdownColor: switchValue
                            ? DarkColor.KscaffoldColor
                            : LightColor.KScaffoldColor,
                        value: _languagechosenValue,
                        icon: Icon(
                          Icons.expand_more,
                          color: switchValue
                              ? DarkColor.KtextColor
                              : LightColor.KtextColor,
                        ),
                        elevation: 0,
                        underline: Container(
                          color: Color(0xff212834),
                        ),
                        style: TextStyle(
                          color: switchValue
                              ? DarkColor.KtextColor
                              : LightColor.KtextColor,
                        ),
                        items: <String>[
                          "English Us",
                          "Email UK",
                          "Hindi",
                          "Vietnamese",
                        ].map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _languagechosenValue = newValue!;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5,),
             if (Responsive.isMobile(context))
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Setting(
                  mouseRegion: mouseRegion,
                  onEnter: (event) {
                    setState(() {
                      mouseRegion = true;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      mouseRegion = false;
                    });
                  },
                  switchValue: switchValue,
                  text: "Privacidad",
                ),
                sizeBoxWidth10,
                Setting(
                  mouseRegion: mouseRegion,
                  onEnter: (event) {
                    setState(() {
                      mouseRegion = true;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      mouseRegion = false;
                    });
                  },
                  switchValue: switchValue,
                  text: "Condiciones",
                ),
                sizeBoxWidth10,
                Setting(
                  mouseRegion: mouseRegion,
                  onEnter: (event) {
                    setState(() {
                      mouseRegion = true;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      mouseRegion = false;
                    });
                  },
                  switchValue: switchValue,
                  text: "Preferencias",
                )
              ],
            ),
            
          ),
         SizedBox(height: 5,)
        ],
      ),
    );
  }
}
