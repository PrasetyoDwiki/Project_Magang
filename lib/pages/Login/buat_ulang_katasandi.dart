import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Login/login.dart';
import 'package:flutter_application_1/pages/Login/lupapassword.dart';
import 'package:google_fonts/google_fonts.dart';

class ubahkatasandi extends StatefulWidget {
  const ubahkatasandi({super.key});

  @override
  State<ubahkatasandi> createState() => _ubahkatasandiState();
}

class _ubahkatasandiState extends State<ubahkatasandi> {
  bool passToogle = true;
  bool passToogle1 = true;
  bool passToogle2 = true;
  final formKey = GlobalKey<FormState>();
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
                    builder: (context) => lupapassword(),
                  ),
                  (route) => false);
            },
            child: Image.asset('assets/back.png'),
          ),
        ),
        title: Text(
          "Membuat Ulang Kata Sandi",
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
                'Silakan buat kata sandi baru, sesuai yang anda inginkan. Jika anda lupa lagi, maka Anda harus melakukan lupa kata sandi.',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Kata Sandi Baru',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w700)),
                  ),
                  TextFormField(
                    style: TextStyle(
                        color: Color(0xff444444),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                    obscureText: passToogle1,
                    decoration: InputDecoration(
                      hintText: 'Isi dengan kata sandi anda',
                      hintStyle: GoogleFonts.poppins(
                          color: Color.fromRGBO(110, 124, 141, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            passToogle1 = !passToogle1;
                          });
                        },
                        child: Icon(passToogle1
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Kata sandi masih kosong';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Konfirmasi Kata Sandi',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w700)),
                  ),
                  TextFormField(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                    obscureText: passToogle2,
                    decoration: InputDecoration(
                      hintText: 'Konfirmasi kata sandi anda',
                      hintStyle: GoogleFonts.poppins(
                          color: Color.fromRGBO(110, 124, 141, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            passToogle2 = !passToogle2;
                          });
                        },
                        child: Icon(passToogle2
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Kata sandi masih kosong';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 330,
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
                      MaterialPageRoute(builder: (context) => login()),
                    );
                  }
                  ;
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
            ),
          ],
        ),
      ),
    );
  }
}
