import 'package:flutter/material.dart';
import 'package:flutter_application_1/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickalert/quickalert.dart';

class absensidinas extends StatefulWidget {
  const absensidinas({super.key});

  @override
  State<absensidinas> createState() => _absensidinasState();
}

class _absensidinasState extends State<absensidinas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
            color: Color(0xff1d77ca),
          ),
          height: 100,
          width: 500,
        ),
        SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        (context, listen: false);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => navbar(
                                index: 0,
                              ),
                            ),
                            (route) => false);
                      },
                      child: Image.asset('assets/back3.png'),
                    ),
                    Text(
                      'Absensi Dinas',
                      style: GoogleFonts.poppins(
                          color: Color(0xffffffff),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'rekapp',
                      style: GoogleFonts.poppins(
                        color: Color(0xff1d77ca),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 50, right: 50),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Ambil Gambar Absensi',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset('assets/aadinas.png'),
                      Text('Senin 22 Juli 2022'),
                      Text('17.00 WIB'),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xff1D77CA),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                )),
                            onPressed: () {},
                            child: Text(
                              'Ulangi',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xff1D77CA),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                )),
                            onPressed: () {
                              QuickAlert.show(
                                context: context,
                                type: QuickAlertType.success,
                                barrierDismissible: true,
                                title: 'Sukses',
                                text: 'Yahoo! Kamu berhasil absensi dinas',
                                confirmBtnText: 'Ok',
                                onConfirmBtnTap: () {
                                  Navigator.of(context).pop();
                                },
                              );
                            },
                            child: Text(
                              'Simpan',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
