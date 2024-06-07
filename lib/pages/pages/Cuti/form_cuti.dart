import 'package:flutter/material.dart';
import 'package:flutter_application_1/navbar.dart';
import 'package:flutter_application_1/pages/Cuti/detail_cuti.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:quickalert/quickalert.dart';

class formcuti extends StatefulWidget {
  const formcuti({super.key});

  @override
  State<formcuti> createState() => _formcutiState();
}

class _formcutiState extends State<formcuti> {
  _formcutiState() {
    _selectedItem = items[0];
  }

  String? _selectedItem = "";

  final items = [
    "Cuti Tahunan",
    "Cuti Sakit",
    "Cuti Bulanan",
  ];

  DateTimeRange dateRange = DateTimeRange(
    start: DateTime.now(),
    end: DateTime(2023, 12, 22),
  );

  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    final difference = dateRange.duration;

    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: GestureDetector(
            onTap: () {
              (context, listen: false);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => navbar(
                      index: 1,
                    ),
                  ),
                  (route) => false);
            },
            child: Image.asset('assets/back.png'),
          ),
        ),
        title: Text(
          "Formulir Pengajuan Cuti",
          style: GoogleFonts.poppins(
              color: Color(0xffffffff),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1D77CA),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Kategori',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Sisa Kuota Cuti 4 Hari',
                      style: GoogleFonts.poppins(
                        color: Color(0xff444444),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              DropdownButtonFormField(
                value: _selectedItem,
                items: items
                    .map((items) => DropdownMenuItem(
                          child: Text(
                            items,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          value: items,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedItem = val as String;
                  });
                },
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xff1d77ca),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Mulai',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Durasi : ${difference.inDays} hari',
                      style: GoogleFonts.poppins(
                        color: Color(0xff444444),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(Icons.calendar_month),
                  TextButton(
                    onPressed: pickDateRange,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        DateFormat.yMMMMd().format(start),
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Sampai',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(Icons.calendar_month),
                  TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: pickDateRange,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        DateFormat.yMMMMd().format(end),
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Keterangan',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  hintText: 'Isi dengan alasan anda',
                  hintStyle: GoogleFonts.poppins(
                      color: Color.fromRGBO(110, 124, 141, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Lampirkan Bukti Surat',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Upload Bukti Surat',
                        style: GoogleFonts.poppins(
                          color: Color(0xff1d77ca),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 130,
              ),
              Center(
                child: Container(
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
                        QuickAlert.show(
                          context: context,
                          type: QuickAlertType.success,
                          barrierDismissible: true,
                          title: 'Berhasil isi formulir',
                          text:
                              'Formulir anda akan muncul dan bisa di lihat pada riwayat perjalanan dinas',
                          confirmBtnText: 'Ok',
                          onConfirmBtnTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => detailcuti(),
                              ),
                            );
                          },
                        );
                      }
                      ;
                    },
                    child: Text(
                      'Konfirmasi',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (newDateRange != null) setState(() => dateRange = newDateRange);
  }
}
