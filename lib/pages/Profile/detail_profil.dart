import 'package:flutter/material.dart';
import 'package:flutter_application_1/navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class detailprofil extends StatelessWidget {
  const detailprofil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40, bottom: 40, left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      (context, listen: false);
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => navbar(index: 3)),
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
                      'Detail Profil',
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
              Text(
                'Nama Depan',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Indra',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Divider(
                color: Color(0xff1d77ca),
              ),
              Text(
                'Nama Belakang',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Putra',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Divider(
                color: Color(0xff1d77ca),
              ),
              Text(
                'Jenis Kelamin',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Laki-laki',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Divider(
                color: Color(0xff1d77ca),
              ),
              Text(
                'Agama',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Islam',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Divider(
                color: Color(0xff1d77ca),
              ),
              Text(
                'Nomer Telepon',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '+6285748976351',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Divider(
                color: Color(0xff1d77ca),
              ),
              Text(
                'Alamat',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Desa Kutoporong Gang 1',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Divider(
                color: Color(0xff1d77ca),
              ),
              Text(
                'Email',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'admin@gmail.com',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Divider(
                color: Color(0xff1d77ca),
              ),
              Text(
                'NIP',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '213345677890',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Divider(
                color: Color(0xff1d77ca),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
