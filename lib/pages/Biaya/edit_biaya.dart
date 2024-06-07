import 'package:flutter/material.dart';
import 'package:flutter_application_1/tabbar.dart';
import 'package:google_fonts/google_fonts.dart';

class editbiaya extends StatefulWidget {
  const editbiaya({super.key});

  @override
  State<editbiaya> createState() => _editbiayaState();
}

class _editbiayaState extends State<editbiaya> {
  _editbiayaState() {
    _selectedItem = items[0];
  }

  String? _selectedItem = "";

  final items = [
    "Transportasi",
    "Konsumsi",
    "Hotel",
    "Lainnya",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => tabbar(),
                        ),
                        (route) => false);
                  },
                  child: Image.asset(
                    'assets/back2.png',
                    height: 40,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Edit Biaya Realisasi',
                    style: GoogleFonts.poppins(
                      fontSize: 25,
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
            Align(
              alignment: Alignment.topLeft,
              child: Text('Kategori',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Transportasi',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                  )),
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Bis',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
            ),
            TextFormField(
              style: TextStyle(color: Colors.black, fontSize: 15),
              decoration: InputDecoration(
                hintText: 'Rp 300.000',
                hintStyle: GoogleFonts.poppins(
                    color: Color.fromRGBO(110, 124, 141, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Kereta',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
            ),
            TextFormField(
              style: TextStyle(color: Colors.black, fontSize: 15),
              decoration: InputDecoration(
                hintText: 'Rp 100.000',
                hintStyle: GoogleFonts.poppins(
                    color: Color.fromRGBO(110, 124, 141, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Keterangan',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                hintText: 'Isi dengan keterangan',
                hintStyle: GoogleFonts.poppins(
                    color: Color.fromRGBO(110, 124, 141, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 250,
            ),
            Container(
              height: 50,
              width: 400,
              child: TextButton(
                style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Color(0xff1D77CA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
                onPressed: () {
                  (context, listen: false);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => tabbar(),
                    ),
                  );
                },
                child: Text(
                  'Simpan',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
