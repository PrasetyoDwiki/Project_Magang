import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home/absensi_dinas.dart';
import 'package:flutter_application_1/pages/Home/rekap_absensi.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:quickalert/quickalert.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  DateTime selectedDates = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  TimeOfDay selectedTime1 = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
              color: Color.fromARGB(125, 29, 118, 202)),
          height: 450,
          width: 500,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
              color: Color(0xff1d77ca)),
          height: 420,
          width: 500,
        ),
        SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/image_home.png',
                        width: 70,
                        height: 70,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Selamat Datang',
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                'assets/hand.png',
                                width: 20,
                              )
                            ],
                          ),
                          Text(
                            'Indra',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Color(0xff1D77CA))),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Jadwal Kerja',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Senin, 22 Juli 2022',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50, right: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '07:00',
                                  style: GoogleFonts.poppins(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '-',
                                  style: GoogleFonts.poppins(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '17.00',
                                  style: GoogleFonts.poppins(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
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
                                    text: 'Yahoo! Kamu berhasil absen',
                                    confirmBtnText: 'Ok',
                                    onConfirmBtnTap: () {
                                      Navigator.of(context).pop();
                                    },
                                  );
                                },
                                child: Text(
                                  'Check in',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Color(0xff1D77CA))),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          (context, listen: false);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => rekap(),
                                            ),
                                          );
                                        },
                                        child: Image.asset('assets/rekap.png')),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Rekap absensi',
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff1d77ca),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          (context, listen: false);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  absensidinas(),
                                            ),
                                          );
                                        },
                                        child:
                                            Image.asset('assets/adinas.png')),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Absensi Dinas',
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff1d77ca),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kehadiran',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1d77ca),
                        ),
                      ),
                      Text(
                        'Lihat semua',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Color(0xff1D77CA))),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, top: 10, bottom: 10, right: 15),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Selasa, 18 Juli 2022',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Image.asset('assets/jam.png'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Jam Mulai',
                                            style: GoogleFonts.poppins(
                                                fontSize: 15,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            '07.00',
                                            style: GoogleFonts.poppins(
                                                fontSize: 15,
                                                color: Colors.black),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Image.asset('assets/jam.png'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Jam Berakhir',
                                            style: GoogleFonts.poppins(
                                                fontSize: 15,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            '17.00',
                                            style: GoogleFonts.poppins(
                                                fontSize: 15,
                                                color: Colors.black),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Perjalanan dinas saat ini',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff1d77ca),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Color(0xff1D77CA))),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, top: 10, bottom: 10, right: 15),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '22-10-2021 s/d 24-10-2021',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'PT Sidomuncul',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Bandung',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
