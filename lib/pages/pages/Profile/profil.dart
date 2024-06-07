import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Profile/detail_profil.dart';
import 'package:flutter_application_1/pages/Profile/gaji.dart';
import 'package:flutter_application_1/pages/Profile/kontrak.dart';
import 'package:flutter_application_1/pages/Login/login.dart';
import 'package:flutter_application_1/pages/Profile/ubah_password.dart';
import 'package:flutter_application_1/pages/Profile/ubah_profil.dart';
import 'package:google_fonts/google_fonts.dart';

class profil extends StatefulWidget {
  const profil({super.key});

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  var currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Profil',
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/Profile.png',
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Manager Information Technology',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'admin@gmail.com',
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        (context, listen: false);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ubahprofil()),
                        ).then((value) {
                          setState(() {});
                        });
                      },
                      child: Text(
                        'Edit Profile',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1d77ca),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    {
                      (context, listen: false);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => detailprofil(),
                        ),
                      );
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/detail_profil.png',
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Detail Profil',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 17,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Divider(
                    color: Color(0xff1d77ca),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    {
                      (context, listen: false);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ubahpassword(),
                        ),
                      );
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/ubah_password.png',
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Ubah password',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 17,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Divider(
                    color: Color(0xff1d77ca),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    {
                      (context, listen: false);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => gaji(),
                        ),
                      );
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/gaji.png',
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Riwayat Gaji',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 17,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Divider(
                    color: Color(0xff1d77ca),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    {
                      (context, listen: false);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => kontrak(),
                        ),
                      );
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/kontrak.png',
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Riwayat Kontrak',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 17,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Divider(
                    color: Color(0xff1d77ca),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                {
                  (context, listen: false);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => login(),
                    ),
                  );
                }
              },
              child: Container(
                height: 70,
                width: 300,
                child: Card(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Color(0xff1d77ca))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 30, right: 30, top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Keluar',
                          style: GoogleFonts.poppins(
                            color: Color(0xff1d77ca),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Image.asset('assets/keluar.png'),
                      ],
                    ),
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
