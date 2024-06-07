import 'package:flutter/material.dart';
import 'package:flutter_application_1/navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class ubahprofil extends StatefulWidget {
  const ubahprofil({super.key});

  @override
  State<ubahprofil> createState() => _ubahprofilState();
}

class _ubahprofilState extends State<ubahprofil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Container(
          child: GestureDetector(
            onTap: () {
              (context, listen: false);
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => navbar(index: 3)),
              );
            },
            child: Image.asset('assets/back3.png'),
          ),
        ),
        title: Text(
          "Edit Profil",
          style: GoogleFonts.poppins(
              color: Color(0xffffffff),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1D77CA),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 50, right: 50),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    'assets/Profile.png',
                    height: 95,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff1d77ca)),
                      child: Icon(
                        Icons.camera_alt_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Nama Lengkap',
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
                hintText: 'Indra Putra',
                hintStyle: GoogleFonts.poppins(
                    color: Color.fromRGBO(110, 124, 141, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Email',
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
                hintText: 'admin@gmail.com',
                hintStyle: GoogleFonts.poppins(
                    color: Color.fromRGBO(110, 124, 141, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Nomor Telepon',
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
                hintText: '+6285748976351',
                hintStyle: GoogleFonts.poppins(
                    color: Color.fromRGBO(110, 124, 141, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Alamat',
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
                hintText: 'Desa Kutopotng Gang 1',
                hintStyle: GoogleFonts.poppins(
                    color: Color.fromRGBO(110, 124, 141, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Jenis Kelamin',
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
                hintText: 'Perempuan',
                hintStyle: GoogleFonts.poppins(
                    color: Color.fromRGBO(110, 124, 141, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('NIP',
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
                hintText: '213345677890',
                hintStyle: GoogleFonts.poppins(
                    color: Color.fromRGBO(110, 124, 141, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 20,
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
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => navbar(
                          index: 3,
                        ),
                      ),
                      (route) => false);
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
