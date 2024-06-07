import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Login/OTP.dart';
import 'package:flutter_application_1/pages/Login/login.dart';
import 'package:google_fonts/google_fonts.dart';

class lupapassword extends StatefulWidget {
  const lupapassword({super.key});

  @override
  State<lupapassword> createState() => _lupapasswordState();
}

class _lupapasswordState extends State<lupapassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Container(
          child: GestureDetector(
            onTap: () {
              (context, listen: false);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => login(),
                  ),
                  (route) => false);
            },
            child: Image.asset('assets/back.png'),
          ),
        ),
        title: Text(
          "Lupa Kata Sandi",
          style: GoogleFonts.poppins(
              color: Color(0xffffffff),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1D77CA),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 40, right: 30, left: 30),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Masukkan email anda dan akan kami \nkirim kode OTP untuk mengatur ulang kata sandi anda.',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Email',
                      style: GoogleFonts.poppins(
                          color: Color(0xff3E3E3E),
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(height: 5),
                TextFormField(
                  style: TextStyle(
                      color: Color(0xff444444),
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    hintText: 'Isi dengan alamat email anda',
                    hintStyle: GoogleFonts.poppins(
                        color: Color.fromRGBO(110, 124, 141, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 420,
            ),
            Container(
              width: 400,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Color(0xff1D77CA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
                onPressed: () {
                  {
                    (context, listen: false);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => otp()),
                    );
                  }
                  ;
                },
                child: Text(
                  'Selanjutnya',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
