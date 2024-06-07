import 'package:flutter/material.dart';
import 'package:flutter_application_1/navbar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:google_fonts/google_fonts.dart';

class rekap extends StatefulWidget {
  const rekap({super.key});

  @override
  State<rekap> createState() => _rekapState();
}

class _rekapState extends State<rekap> {
  DateTime today = DateTime.now();
  void _onDayselected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   leading: Container(
        //     child: GestureDetector(
        //       onTap: () {
        //         (context, listen: false);
        //         Navigator.pushAndRemoveUntil(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => navbar(
        //                 index: 0,
        //               ),
        //             ),
        //             (route) => false);
        //       },
        //       child: Image.asset('assets/back.png'),
        //     ),
        //   ),
        //   title: Text(
        //     "Rekap Absensi",
        //     style: GoogleFonts.poppins(
        //         color: Color(0xffffffff),
        //         fontSize: 20,
        //         fontWeight: FontWeight.w600),
        //   ),
        //   centerTitle: true,
        //   backgroundColor: Color(0xff1D77CA),
        // ),
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
                      'Rekap Absensi',
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
                margin: EdgeInsets.only(top: 30, left: 50, right: 50),
                child: Column(
                  children: [
                    TableCalendar(
                      focusedDay: today,
                      headerStyle: HeaderStyle(
                          formatButtonVisible: false, titleCentered: true),
                      availableGestures: AvailableGestures.all,
                      selectedDayPredicate: (day) => isSameDay(day, today),
                      firstDay: DateTime.utc(2010, 10, 26),
                      lastDay: DateTime.utc(2030, 3, 14),
                      onDaySelected: _onDayselected,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Rekap Absen',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
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
                          'assets/tahunan.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Jatah cuti tahunan',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            '12 hari',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/izin.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Izin cuti',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 195,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            '2 hari',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/sakit.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Izin sakit',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 185,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            '0 hari',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/alasan.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Tanpa keterangan',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            '2 hari',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
