import 'package:flutter/material.dart';
import 'package:flutter_application_1/tabbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickalert/quickalert.dart';

class tambahbiaya extends StatefulWidget {
  const tambahbiaya({super.key});

  @override
  State<tambahbiaya> createState() => _tambahbiayaState();
}

class _tambahbiayaState extends State<tambahbiaya> {
  _tambahbiayaState() {
    _selectedItem = items[0];
  }

  String? _selectedItem = "";

  final items = [
    "Transportasi",
    "Konsumsi",
    "Hotel",
    "Lainnya",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    (context, listen: false);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => tabbar(),
                        ),
                        (route) => false);
                  },
                  child: Image.asset(
                    'assets/back2.png',
                    height: 40,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Tambah Biaya Realisasi',
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Kategori',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
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
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Biaya',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
            ),
            TextFormField(
              style: TextStyle(color: Colors.black, fontSize: 15),
              decoration: InputDecoration(
                hintText: 'Isi dengan range biaya',
                hintStyle: GoogleFonts.poppins(
                    color: Color.fromRGBO(110, 124, 141, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Keterangan',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                hintText: 'Isi dengan keterangan',
                hintStyle: GoogleFonts.poppins(
                    color: Color.fromRGBO(110, 124, 141, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 200,
                width: 400,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Bukti Pembayaran',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Pilih gambar yang anda upload',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 50,
                            width: 160,
                            child: Card(
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('assets/upload2.png'),
                                    Text(
                                      'Upload gambar',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 50,
              width: 400,
              child: TextButton(
                style: TextButton.styleFrom(
                    elevation: 10,
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
                    text: 'Yahoo! Kamu berhasil menambahkan biaya realisasi',
                    confirmBtnText: 'Ok',
                    onConfirmBtnTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => tabbar()),
                      );
                    },
                  );
                },
                child: Text(
                  'Simpan',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
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
