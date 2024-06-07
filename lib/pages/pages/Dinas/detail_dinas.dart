import 'package:flutter/material.dart';
import 'package:flutter_application_1/navbar.dart';
import 'package:flutter_application_1/tabbar.dart';
import 'package:google_fonts/google_fonts.dart';

class detailbisnis extends StatelessWidget {
  const detailbisnis({super.key});

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
            "Detail Perjalanan Dinas",
            style: GoogleFonts.poppins(
                color: Color(0xffffffff),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff1D77CA),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.attach_money_outlined),
            backgroundColor: Color(0xff1d77ca),
            elevation: 10,
            splashColor: Colors.lightBlue,
            onPressed: () {
              {
                (context, listen: false);
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => tabbar(),
                    ),
                    (route) => false);
              }
            }),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Stack(
          children: [
            ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40, left: 30, right: 30),
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
                          Text(
                            'SBY',
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w800),
                          ),
                          Image.asset(
                            'assets/arrow.png',
                            width: 50,
                          ),
                          Text(
                            'BDG',
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w800),
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
                      SizedBox(
                        height: 20,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Status',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Proses',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      ListTile(
                        title: Text(
                          'Nama',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Indira Ayu',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      ListTile(
                        title: Text(
                          'Tanggal Keberangkatan',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Senin, 11 Sep 2020',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      ListTile(
                        title: Text(
                          'Tanggal Pulang',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Jumat, 15 Sep 2020',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      ListTile(
                        title: Text(
                          'PIC',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Agung Supratman, 213345677890',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      ListTile(
                        title: Text(
                          'Nomer Telepon PIC',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          '082333546213',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        height: 10,
                      ),
                      ListTile(
                        title: Text(
                          'Komisi',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Rp 1xxxxxx',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        trailing: Text(
                          'Belum Cair',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      ListTile(
                        title: Text(
                          'Berita Acara',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Lihat Berita Acara',
                          style: GoogleFonts.poppins(
                            color: Color(0xff1d77ca),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      ListTile(
                        title: Text(
                          'Bukti Surat',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Lihat Bukti Surat',
                          style: GoogleFonts.poppins(
                            color: Color(0xff1d77ca),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.only(bottom: 20, left: 20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       Column(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //         children: [
            //           GestureDetector(
            //               onTap: () {
            //                 (context, listen: false);
            //                 Navigator.pushAndRemoveUntil(
            //                     context,
            //                     MaterialPageRoute(
            //                       builder: (context) => tabbar(),
            //                     ),
            //                     (route) => false);
            //               },
            //               child: Image.asset('assets/estimasi.png')),
            //           SizedBox(
            //             height: 5,
            //           ),
            //           Text(
            //             'Estimasi',
            //             style: GoogleFonts.poppins(
            //                 fontSize: 17,
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.w500),
            //           ),
            //         ],
            //       ),
            //       Column(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //         children: [
            //           GestureDetector(
            //               onTap: () {
            //                 (context, listen: false);
            //                 Navigator.pushAndRemoveUntil(
            //                     context,
            //                     MaterialPageRoute(
            //                       builder: (context) => realisasi(),
            //                     ),
            //                     (route) => false);
            //               },
            //               child: Image.asset('assets/realisasi.png')),
            //           SizedBox(
            //             height: 5,
            //           ),
            //           Text(
            //             'Realisasi',
            //             style: GoogleFonts.poppins(
            //                 fontSize: 17,
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.w500),
            //           ),
            //         ],
            //       ),
            //       Column(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //         children: [
            //           GestureDetector(
            //               onTap: () {
            //                 (context, listen: false);
            //                 Navigator.pushAndRemoveUntil(
            //                     context,
            //                     MaterialPageRoute(
            //                       builder: (context) => perbandingan(),
            //                     ),
            //                     (route) => false);
            //               },
            //               child: Image.asset('assets/perbandingan.png')),
            //           SizedBox(
            //             height: 5,
            //           ),
            //           Text(
            //             'Perbandingan',
            //             style: GoogleFonts.poppins(
            //                 fontSize: 17,
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.w500),
            //           ),
            //         ],
            //       ),

            //     ],
            //   ),
            // )
          ],
        ));
  }
}
