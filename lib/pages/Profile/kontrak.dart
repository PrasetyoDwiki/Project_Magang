import 'package:flutter/material.dart';
import 'package:flutter_application_1/navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class kontrak extends StatefulWidget {
  const kontrak({super.key});

  @override
  State<kontrak> createState() => _kontrakState();
}

class _kontrakState extends State<kontrak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    (context, listen: false);
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => navbar(index: 3)),
                    );
                  },
                  child: Image.asset('assets/back2.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Riwayat Kontrak',
                    style: GoogleFonts.poppins(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text('Manager',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
              subtitle: Text('01-11-2014   s/d   01-11-2017',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400)),
            ),
            Divider(
              color: Color(0xff1d77ca),
            ),
            ListTile(
              title: Text('Manager',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
              subtitle: Text('01-11-2014   s/d   01-11-2017',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400)),
            ),
            Divider(
              color: Color(0xff1d77ca),
            ),
          ],
        ),
      ),
    );
  }
}
