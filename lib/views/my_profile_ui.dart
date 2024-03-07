// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:midterms_app_6552410002/views/search_ui.dart';

class MyProfileUI extends StatefulWidget {
  const MyProfileUI({Key? key}) : super(key: key);

  @override
  State<MyProfileUI> createState() => _MyProfileUIState();
}

class _MyProfileUIState extends State<MyProfileUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Icon(Icons.search),
                        ))),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.20,
                  backgroundImage: AssetImage('assets/images/01.jpg'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  'KaiTodUFC',
                  style: GoogleFonts.kanit(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height * 0.08,
                  ),
                ),
                Text(
                  'Tanawat Netsutthirot \n       ID:6552410002',
                  style: GoogleFonts.kanit(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'FOLLOW  ME',
                    style: GoogleFonts.kanit(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width * 0.9,
                        MediaQuery.of(context).size.height * 0.06),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SearchUI()),
                    );
                  },
                  child: Text(
                    'SEARCH',
                    style: GoogleFonts.kanit(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(1000, 50),
                    side: BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 7,
                  ),
                  itemCount: 26,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      'assets/images/${index + 1}.jpg',
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.3,
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
