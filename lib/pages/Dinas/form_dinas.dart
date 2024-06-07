import 'package:flutter/material.dart';
import 'package:flutter_application_1/navbar.dart';
import 'package:flutter_application_1/pages/Dinas/berangkat.dart';
import 'package:flutter_application_1/pages/Dinas/beritaacara.dart';
import 'package:flutter_application_1/pages/Dinas/buktisurat.dart';
import 'package:flutter_application_1/pages/Dinas/detail_dinas.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:quickalert/quickalert.dart';

class formbisnis extends StatefulWidget {
  const formbisnis({super.key});

  @override
  State<formbisnis> createState() => _formbisnisState();
}

class _formbisnisState extends State<formbisnis> {
  _formbisnisState() {
    _selectedItem = items[0];
    _selectedItem1 = items1[0];
  }

  String? _selectedItem = "";
  String? _selectedItem1 = "";

  final items = [
    "PT. Semoga Sukses",
    "PT. Sumber Makmur",
    "PT. Sumber Maju",
  ];
  final items1 = [
    "Surabaya",
    "Bandung",
    "Jakarta",
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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Container(
          child: GestureDetector(
            onTap: () {
              (context, listen: false);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => navbar(
                      index: 2,
                    ),
                  ),
                  (route) => false);
            },
            child: Image.asset('assets/back.png'),
          ),
        ),
        title: Text(
          "Formulir Perjalanan Dinas",
          style: GoogleFonts.poppins(
              color: Color(0xffffffff),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1D77CA),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Berangkat Dari',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Tujuan',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        (context, listen: false);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Berangkat(),
                          ),
                        );
                      },
                      child: Text(
                        'SBY',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ),
                    Image.asset(
                      'assets/arrow.png',
                      width: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        (context, listen: false);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Berangkat(),
                          ),
                        );
                      },
                      child: Text(
                        'BDG',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Surabaya\n(PT. Semoga Sukses)',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Bandung\n(PT. Indah Otsuka)',
                      textAlign: TextAlign.right,
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: Text('Perusahaan',
                //       style: GoogleFonts.poppins(
                //           color: Colors.black,
                //           fontSize: 17,
                //           fontWeight: FontWeight.w600)),
                // ),
                // SizedBox(
                //   height: 5,
                // ),
                // DropdownButtonFormField(
                //   value: _selectedItem,
                //   items: items
                //       .map((items) => DropdownMenuItem(
                //             child: Text(
                //               items,
                //               style: TextStyle(
                //                 color: Colors.black,
                //                 fontSize: 15,
                //               ),
                //             ),
                //             value: items,
                //           ))
                //       .toList(),
                //   onChanged: (val) {
                //     setState(() {
                //       _selectedItem = val as String;
                //     });
                //   },
                //   icon: const Icon(
                //     Icons.arrow_drop_down,
                //     color: Color(0xff1d77ca),
                //   ),
                // ),
                // SizedBox(
                //   height: 10,
                // ),
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: Text('Alamat Perusahaan',
                //       style: GoogleFonts.poppins(
                //           color: Colors.black,
                //           fontSize: 17,
                //           fontWeight: FontWeight.w600)),
                // ),
                // SizedBox(
                //   height: 5,
                // ),
                // DropdownButtonFormField(
                //   value: _selectedItem1,
                //   items: items1
                //       .map((items1) => DropdownMenuItem(
                //             child: Text(
                //               items1,
                //               style: TextStyle(
                //                 color: Colors.black,
                //                 fontSize: 15,
                //               ),
                //             ),
                //             value: items1,
                //           ))
                //       .toList(),
                //   onChanged: (val) {
                //     setState(() {
                //       _selectedItem1 = val as String;
                //     });
                //   },
                //   icon: const Icon(
                //     Icons.arrow_drop_down,
                //     color: Color(0xff1d77ca),
                //   ),
                // ),
                SizedBox(
                  height: 20,
                  child: Divider(
                    color: Color(0xff1d77ca),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Berangkat',
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
                      style: TextButton.styleFrom(),
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
                    color: Color(0xff1d77ca),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Pulang',
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
                    color: Color(0xff1d77ca),
                  ),
                ),
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: Text('Daftar Karyawan',
                //       style: GoogleFonts.poppins(
                //           color: Color(0xff6E7C8D),
                //           fontSize: 15,
                //           fontWeight: FontWeight.w600)),
                // ),
                // SizedBox(
                //   height: 5,
                // ),
                // TextFormField(
                //   style: TextStyle(
                //     color: Color(0xff464646),
                //     fontSize: 12,
                //   ),
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(30),
                //     ),
                //     hintText: 'Isi dengan nomer karyawan anda',
                //     hintStyle: GoogleFonts.poppins(
                //         color: Color.fromRGBO(110, 124, 141, 1),
                //         fontSize: 12,
                //         fontWeight: FontWeight.normal),
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('PIC',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Isi dengan nama PIC anda',
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
                  child: Text('Nomer Handphone PIC',
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
                    hintText: 'Isi dengan nomer handphone PIC anda',
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
                  child: Text('Berita Acara',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Upload Berita Acara',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        (context, listen: false);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => berita_acara(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/upload.png',
                        width: 30,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                  child: Divider(
                    color: Colors.blue,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Bukti Surat',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Upload Bukti Surat',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        (context, listen: false);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => bukti_surat(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/upload.png',
                        width: 30,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                  child: Divider(
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 50,
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
                                  builder: (context) => detailbisnis(),
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
                SizedBox(
                  height: 40,
                ),
              ],
            ),
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
