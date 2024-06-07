import 'package:flutter/material.dart';
import 'package:flutter_application_1/navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class detailcuti extends StatelessWidget {
  const detailcuti({super.key});

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
                      index: 1,
                    ),
                  ),
                  (route) => false);
            },
            child: Image.asset('assets/back.png'),
          ),
        ),
        title: Text(
          "Detail Riwayat Cuti",
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
          child: ListView(
            children: [
              Column(
                children: [
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
                      'Kategori',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Cuti Tahunan',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    trailing: Text(
                      'Sisa Kuota Cuti 4 Hari',
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
                      'Tanggal Mulai',
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
                      'Tanggal Berakhir',
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
                      'Keterangan',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Kepentingan Keluarga',
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
                      'Lampiran Bukti Surat',
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
                ],
              ),
            ],
          )),
    );
  }
}
