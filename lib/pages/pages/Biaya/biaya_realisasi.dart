import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Biaya/edit_biaya.dart';
import 'package:flutter_application_1/pages/Biaya/nota.dart';
import 'package:flutter_application_1/pages/Biaya/tambah_biaya.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class realisasi extends StatefulWidget {
  const realisasi({super.key});

  @override
  State<realisasi> createState() => _realisasiState();
}

class _realisasiState extends State<realisasi> {
  final List<String> contents = [
    'Upload Nota',
    'Tambah Data',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Color(0xff1d77ca),
            elevation: 10,
            splashColor: Colors.lightBlue,
            onPressed: () {
              {
                (context, listen: false);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => tambahbiaya(),
                  ),
                );
              }
            }),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Container(
          margin: EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Transaksi Terakhir',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  {
                    (context, listen: false);
                    showModalBottomSheet(
                      backgroundColor: Color(0xff1d77ca),
                      context: context,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                      builder: (context) => StatefulBuilder(
                        builder: (BuildContext, StateSetter setState) {
                          return Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, bottom: 20),
                                child: Text(
                                  'Detail Transportasi',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                              Slidable(
                                startActionPane: ActionPane(
                                    motion: StretchMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed: ((context) {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  title: Text(
                                                      'Edit detail transportasi'),
                                                  content: Text(
                                                      'Anda yakin untuk mengedit detail transportasi ini?'),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        OutlinedButton(
                                                            style: OutlinedButton.styleFrom(
                                                                textStyle: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                                side: BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                                primary: Colors
                                                                    .black),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child:
                                                                Text('Batal')),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        ElevatedButton(
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .green),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .push(
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          editbiaya(),
                                                                ),
                                                              );
                                                            },
                                                            child: Text(
                                                              'Edit',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            )),
                                                      ],
                                                    )
                                                  ],
                                                );
                                              });
                                        }),
                                        backgroundColor: Colors.green,
                                        icon: Icons.edit,
                                      ),
                                    ]),
                                endActionPane: ActionPane(
                                    motion: StretchMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed: ((context) {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  title: Text(
                                                      'Hapus detail transportasi'),
                                                  content: Text(
                                                      'Anda yakin untuk menghapus detail transportasi ini?'),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        OutlinedButton(
                                                            style: OutlinedButton.styleFrom(
                                                                textStyle: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                                side: BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                                primary: Colors
                                                                    .black),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child:
                                                                Text('Batal')),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        ElevatedButton(
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .red),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child: Text(
                                                              'Hapus',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            )),
                                                      ],
                                                    )
                                                  ],
                                                );
                                              });
                                        }),
                                        backgroundColor: Colors.red,
                                        icon: Icons.delete,
                                      ),
                                    ]),
                                child: Container(
                                  child: ListTile(
                                    leading:
                                        Image.asset('assets/transportasi.png'),
                                    title: Text(
                                      'Transportasi Luar Kota',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    subtitle: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Kereta',
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              'Rp 300.000',
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Bis',
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              'Rp 100.000',
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
                                    trailing: Column(
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) => Nota(),
                                                ),
                                              );
                                            },
                                            child: Image.asset(
                                                'assets/upload.png')),
                                        Text(
                                          'Lihat',
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                              Slidable(
                                startActionPane: ActionPane(
                                    motion: StretchMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed: ((context) {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  title: Text(
                                                      'Edit detail transportasi'),
                                                  content: Text(
                                                      'Anda yakin untuk mengedit detail transportasi ini?'),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        OutlinedButton(
                                                            style: OutlinedButton.styleFrom(
                                                                textStyle: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                                side: BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                                primary: Colors
                                                                    .black),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child:
                                                                Text('Batal')),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        ElevatedButton(
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .green),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .push(
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          editbiaya(),
                                                                ),
                                                              );
                                                            },
                                                            child: Text(
                                                              'Edit',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            )),
                                                      ],
                                                    )
                                                  ],
                                                );
                                              });
                                        }),
                                        backgroundColor: Colors.green,
                                        icon: Icons.edit,
                                      ),
                                    ]),
                                endActionPane: ActionPane(
                                    motion: StretchMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed: ((context) {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  title: Text(
                                                      'Hapus detail transportasi'),
                                                  content: Text(
                                                      'Anda yakin untuk menghapus detail transportasi ini?'),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        OutlinedButton(
                                                            style: OutlinedButton.styleFrom(
                                                                textStyle: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                                side: BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                                primary: Colors
                                                                    .black),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child:
                                                                Text('Batal')),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        ElevatedButton(
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .red),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child: Text(
                                                              'Hapus',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            )),
                                                      ],
                                                    )
                                                  ],
                                                );
                                              });
                                        }),
                                        backgroundColor: Colors.red,
                                        icon: Icons.delete,
                                      ),
                                    ]),
                                child: Container(
                                  child: ListTile(
                                    leading:
                                        Image.asset('assets/transportasi.png'),
                                    title: Text(
                                      'Transportasi Dalam Kota',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    subtitle: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Kereta',
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              'Rp 200.000',
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Bis',
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              'Rp 100.000',
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
                                    trailing: Column(
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) => Nota(),
                                                ),
                                              );
                                            },
                                            child: Image.asset(
                                                'assets/upload.png')),
                                        Text(
                                          'Lihat',
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  }
                  ;
                },
                child: ListTile(
                  leading: Image.asset(
                    'assets/transportasi.png',
                    height: 100,
                  ),
                  title: Text(
                    'Transportasi',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Transportasi Luar Kota',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Transportasi Dalam Kota',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  trailing: Text(
                    'Rp 800.000',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              GestureDetector(
                onTap: () {
                  {
                    (context, listen: false);
                    showModalBottomSheet(
                      backgroundColor: Color(0xff1d77ca),
                      context: context,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                      builder: (context) => StatefulBuilder(
                        builder: (BuildContext, StateSetter setState) {
                          return Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, bottom: 20),
                                child: Text(
                                  'Detail Konsumsi',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                              Slidable(
                                startActionPane: ActionPane(
                                    motion: StretchMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed: ((context) {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  title: Text(
                                                      'Edit detail konsumsi'),
                                                  content: Text(
                                                      'Anda yakin untuk mengedit detail konsumsi ini?'),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        OutlinedButton(
                                                            style: OutlinedButton.styleFrom(
                                                                textStyle: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                                side: BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                                primary: Colors
                                                                    .black),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child:
                                                                Text('Batal')),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        ElevatedButton(
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .green),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .push(
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          editbiaya(),
                                                                ),
                                                              );
                                                            },
                                                            child: Text(
                                                              'Edit',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            )),
                                                      ],
                                                    )
                                                  ],
                                                );
                                              });
                                        }),
                                        backgroundColor: Colors.green,
                                        icon: Icons.edit,
                                      ),
                                    ]),
                                endActionPane: ActionPane(
                                    motion: StretchMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed: ((context) {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  title: Text(
                                                      'Hapus detail konsumsi'),
                                                  content: Text(
                                                      'Anda yakin untuk menghapus detail konsumsi ini?'),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        OutlinedButton(
                                                            style: OutlinedButton.styleFrom(
                                                                textStyle: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                                side: BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                                primary: Colors
                                                                    .black),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child:
                                                                Text('Batal')),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        ElevatedButton(
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .red),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child: Text(
                                                              'Hapus',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            )),
                                                      ],
                                                    )
                                                  ],
                                                );
                                              });
                                        }),
                                        backgroundColor: Colors.red,
                                        icon: Icons.delete,
                                      ),
                                    ]),
                                child: Container(
                                  child: ListTile(
                                    leading: Image.asset('assets/kosumsi.png'),
                                    title: Text(
                                      'Konsumsi Sarapan',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    subtitle: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Biaya Sarapan',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          'Rp 200.000',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    trailing: Column(
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) => Nota(),
                                                ),
                                              );
                                            },
                                            child: Image.asset(
                                                'assets/upload.png')),
                                        Text(
                                          'Lihat',
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                              Slidable(
                                startActionPane: ActionPane(
                                    motion: StretchMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed: ((context) {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  title: Text(
                                                      'Edit detail konsumsi'),
                                                  content: Text(
                                                      'Anda yakin untuk mengedit detail konsumsi ini?'),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        OutlinedButton(
                                                            style: OutlinedButton.styleFrom(
                                                                textStyle: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                                side: BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                                primary: Colors
                                                                    .black),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child:
                                                                Text('Batal')),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        ElevatedButton(
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .green),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .push(
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          editbiaya(),
                                                                ),
                                                              );
                                                            },
                                                            child: Text(
                                                              'Edit',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            )),
                                                      ],
                                                    )
                                                  ],
                                                );
                                              });
                                        }),
                                        backgroundColor: Colors.green,
                                        icon: Icons.edit,
                                      ),
                                    ]),
                                endActionPane: ActionPane(
                                    motion: StretchMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed: ((context) {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  title: Text(
                                                      'Hapus detail konsumsi'),
                                                  content: Text(
                                                      'Anda yakin untuk menghapus detail konsumsi ini?'),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        OutlinedButton(
                                                            style: OutlinedButton.styleFrom(
                                                                textStyle: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                                side: BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                                primary: Colors
                                                                    .black),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child:
                                                                Text('Batal')),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        ElevatedButton(
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .red),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child: Text(
                                                              'Hapus',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            )),
                                                      ],
                                                    )
                                                  ],
                                                );
                                              });
                                        }),
                                        backgroundColor: Colors.red,
                                        icon: Icons.delete,
                                      ),
                                    ]),
                                child: Container(
                                  child: ListTile(
                                    leading: Image.asset('assets/kosumsi.png'),
                                    title: Text(
                                      'Konsumsi Makan Siang',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    subtitle: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Biaya Makan Siang',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          'Rp 100.000',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    trailing: Column(
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) => Nota(),
                                                ),
                                              );
                                            },
                                            child: Image.asset(
                                                'assets/upload.png')),
                                        Text(
                                          'Lihat',
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                              Slidable(
                                startActionPane: ActionPane(
                                    motion: StretchMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed: ((context) {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  title: Text(
                                                      'Edit detail konsumsi'),
                                                  content: Text(
                                                      'Anda yakin untuk mengedit detail konsumsi ini?'),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        OutlinedButton(
                                                            style: OutlinedButton.styleFrom(
                                                                textStyle: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                                side: BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                                primary: Colors
                                                                    .black),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child:
                                                                Text('Batal')),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        ElevatedButton(
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .green),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .push(
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          editbiaya(),
                                                                ),
                                                              );
                                                            },
                                                            child: Text(
                                                              'Edit',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            )),
                                                      ],
                                                    )
                                                  ],
                                                );
                                              });
                                        }),
                                        backgroundColor: Colors.green,
                                        icon: Icons.edit,
                                      ),
                                    ]),
                                endActionPane: ActionPane(
                                    motion: StretchMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed: ((context) {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  title: Text(
                                                      'Hapus detail konsumsi'),
                                                  content: Text(
                                                      'Anda yakin untuk menghapus detail konsumsi ini?'),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        OutlinedButton(
                                                            style: OutlinedButton.styleFrom(
                                                                textStyle: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                                side: BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                                primary: Colors
                                                                    .black),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child:
                                                                Text('Batal')),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        ElevatedButton(
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .red),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child: Text(
                                                              'Hapus',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            )),
                                                      ],
                                                    )
                                                  ],
                                                );
                                              });
                                        }),
                                        backgroundColor: Colors.red,
                                        icon: Icons.delete,
                                      ),
                                    ]),
                                child: Container(
                                  child: ListTile(
                                    leading: Image.asset('assets/kosumsi.png'),
                                    title: Text(
                                      'Konsumsi Makan Malam',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    subtitle: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Biaya Makan Malam',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          'Rp 100.000',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    trailing: Column(
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) => Nota(),
                                                ),
                                              );
                                            },
                                            child: Image.asset(
                                                'assets/upload.png')),
                                        Text(
                                          'Lihat',
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  }
                  ;
                },
                child: ListTile(
                  leading: Image.asset(
                    'assets/kosumsi.png',
                    height: 100,
                  ),
                  title: Text(
                    'Konsumsi',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Sarapan, Makan Siang',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Makan Malam',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  trailing: Text(
                    'Rp 400.000',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              GestureDetector(
                onTap: () {
                  {
                    (context, listen: false);
                    showModalBottomSheet(
                      backgroundColor: Color(0xff1d77ca),
                      context: context,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                      builder: (context) => StatefulBuilder(
                        builder: (BuildContext, StateSetter setState) {
                          return Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, bottom: 20),
                                child: Text(
                                  'Detail Hotel',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                              Slidable(
                                startActionPane: ActionPane(
                                    motion: StretchMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed: ((context) {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  title:
                                                      Text('Edit detail hotel'),
                                                  content: Text(
                                                      'Anda yakin untuk mengedit detail hotel ini?'),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        OutlinedButton(
                                                            style: OutlinedButton.styleFrom(
                                                                textStyle: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                                side: BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                                primary: Colors
                                                                    .black),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child:
                                                                Text('Batal')),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        ElevatedButton(
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .green),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .push(
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          editbiaya(),
                                                                ),
                                                              );
                                                            },
                                                            child: Text(
                                                              'Edit',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            )),
                                                      ],
                                                    )
                                                  ],
                                                );
                                              });
                                        }),
                                        backgroundColor: Colors.green,
                                        icon: Icons.edit,
                                      ),
                                    ]),
                                endActionPane: ActionPane(
                                    motion: StretchMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed: ((context) {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  title: Text(
                                                      'Hapus detail hotel'),
                                                  content: Text(
                                                      'Anda yakin untuk menghapus detail hotel ini?'),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        OutlinedButton(
                                                            style: OutlinedButton.styleFrom(
                                                                textStyle: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                                side: BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                                primary: Colors
                                                                    .black),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child:
                                                                Text('Batal')),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        ElevatedButton(
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .red),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child: Text(
                                                              'Hapus',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            )),
                                                      ],
                                                    )
                                                  ],
                                                );
                                              });
                                        }),
                                        backgroundColor: Colors.red,
                                        icon: Icons.delete,
                                      ),
                                    ]),
                                child: Container(
                                  child: ListTile(
                                    leading: Image.asset('assets/hotel.png'),
                                    title: Text(
                                      'Hotel',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    subtitle: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Hotel Cempaka',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          'Rp 1.300.000',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    trailing: Column(
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) => Nota(),
                                                ),
                                              );
                                            },
                                            child: Image.asset(
                                                'assets/upload.png')),
                                        Text(
                                          'Lihat',
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  }
                  ;
                },
                child: ListTile(
                  leading: Image.asset(
                    'assets/hotel.png',
                    height: 100,
                  ),
                  title: Text(
                    'Hotel',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Penginapan',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  trailing: Text(
                    'Rp 1.300.000',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 400,
                height: 150,
                child: Card(
                  color: Color(0xff1d77ca),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '01 April 2023',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Total untuk biaya realisasi',
                            style: GoogleFonts.poppins(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Rp.3.400.000',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
