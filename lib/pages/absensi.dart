import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Home/home.dart';
import 'package:intl/intl.dart';

class absensi extends StatefulWidget {
  const absensi({super.key});

  @override
  State<absensi> createState() => _absensiState();
}

class _absensiState extends State<absensi> {
  DateTime selectedDates = DateTime.now();
  DateTime selectedDates1 = DateTime.now();
  // DateTimeRange selectedDates = DateTimeRange(
  //     start: DateTime.now(), end: DateTime.now().add(Duration(days: 7)));
  // DateTime _startDate = DateTime.now();
  // DateTime _endtDate = DateTime.now().add(Duration(days: 7));

  // TextEditingController _date = TextEditingController();

  // Future displayDateRangePicker(BuildContext context) async {
  //   // final List<DateTime> picked = await DateRange.showDatePicker(
  //   // context: context,
  //   // initialFirstDate: _startDate,
  //   // initialLastDate: _endtDate,
  //   // firstDate: new DateTime(DateTime.now().year -50),
  //   // lastDate: new DateTime(DateTime.now().year -50));

  //   // if (picked !=null && picked.length == 2) {
  //   //   setState(() {
  //   //     _startDate = picked [0];
  //   //   _endtDate = picked [1];
  //   //   });
  //   // }
  //}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: GestureDetector(
            onTap: () {
              (context, listen: false);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => home(),
                  ),
                  (route) => false);
            },
            child: Image.asset('assets/back.png'),
          ),
        ),
        title: Text(
          "Absensi",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () async {
                    final DateTime? dateTime = await showDatePicker(
                      context: context,
                      initialDate: selectedDates1,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2030),
                    );
                    if (dateTime != null) {
                      setState(() {
                        selectedDates1 = dateTime;
                      });
                    }
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Color(0xff1D77CA),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 15, right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Waktu Mulai',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                            child: Divider(
                              color: Color(0xffffffff),
                            ),
                          ),
                          Text(
                            DateFormat.EEEE().add_Hm().format(DateTime.now()),
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                GestureDetector(
                  onTap: () async {
                    final DateTime? dateTime = await showDatePicker(
                      context: context,
                      initialDate: selectedDates,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2030),
                    );
                    if (dateTime != null) {
                      setState(() {
                        selectedDates = dateTime;
                      });
                    }
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Color(0xff1D77CA),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Waktu Berakhir',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                            child: Divider(
                              color: Color(0xffffffff),
                            ),
                          ),
                          Text(
                            DateFormat.EEEE().add_Hm().format(DateTime.now()),
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Color(0xff1D77CA),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Perjalanan Bisnis',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'PT. Semoga Sukses',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Surabaya',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              '21-10-2022',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Color(0xff1D77CA),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Absensi Tersimpan',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Anda sudah melakukan absensi',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/kamera.png',
              height: 100,
              width: 150,
            )
          ],
        ),
      ),
    );
  }
}
