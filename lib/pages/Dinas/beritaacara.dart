import 'package:flutter/material.dart';
import 'form_dinas.dart';
import 'package:google_fonts/google_fonts.dart';

class berita_acara extends StatefulWidget {
  const berita_acara({super.key});

  @override
  State<berita_acara> createState() => _berita_acaraState();
}

class _berita_acaraState extends State<berita_acara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: GestureDetector(
            onTap: () {
              (context, listen: false);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => formbisnis(),
                ),
              );
            },
            child: Image.asset('assets/back.png'),
          ),
        ),
        title: Text(
          "Upload Berita Acara",
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
        height: 350,
        child: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Lengkapi formulir anda',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        (context, listen: false);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => formbisnis(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/cancel.png',
                        width: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Pilih dokumen yang anda upload',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 200,
                    child: GestureDetector(
                      child: Card(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Color(0xff1d77ca))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'assets/upload.png',
                                height: 25,
                              ),
                              Text(
                                'Upload Dokumen',
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
                          backgroundColor: Color(0xff1D77CA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      onPressed: () {
                        {
                          (context, listen: false);
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => formbisnis(),
                              ),
                              (route) => false);
                        }
                        ;
                      },
                      child: Text(
                        'Konfirmasi',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    width: 400,
                    height: 50,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Color(0xff1d77ca)))),
                      onPressed: () {
                        {
                          (context, listen: false);
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => formbisnis(),
                              ),
                              (route) => false);
                        }
                        ;
                      },
                      child: Text(
                        'Batal',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 17,
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
      ),
    );
  }
}
