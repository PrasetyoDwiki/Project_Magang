import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Cuti/detail_cuti.dart';
import 'package:flutter_application_1/pages/Cuti/form_cuti.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class Cuti extends StatefulWidget {
  const Cuti({super.key});

  @override
  State<Cuti> createState() => _CutiState();
}

class _CutiState extends State<Cuti> {
  int _value = 1;

  DateTimeRange dateRange = DateTimeRange(
    start: DateTime.now(),
    end: DateTime(2023, 12, 22),
  );

  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;

    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        )),
        title: Text(
          "Riwayat Cuti",
          style: GoogleFonts.poppins(
              color: Color(0xffffffff),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1D77CA),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: DefaultTabController(
            length: 3,
            child: TabBar(
              labelPadding: EdgeInsets.only(bottom: 20),
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.white))),
                    child: TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                              isDismissible: false,
                              context: context,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30))),
                              builder: (BuildContext context) =>
                                  StatefulBuilder(builder:
                                      (BuildContext, StateSetter setState) {
                                    return Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20, left: 20, right: 20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Pilih Tanggal',
                                                style: GoogleFonts.poppins(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Container(
                                                width: 100,
                                                child: TextButton(
                                                    style: TextButton.styleFrom(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30),
                                                            side: BorderSide(
                                                                color: Color(
                                                                    0xff1d77ca)))),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text(
                                                      'Batal',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        RadioListTile(
                                          value: 1,
                                          groupValue: _value,
                                          onChanged: (val) {
                                            setState(() {
                                              _value = val!;
                                            });
                                          },
                                          activeColor: Color(0xff1d77ca),
                                          title: Text(
                                            '7 Hari Terakhir',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          subtitle: Text(
                                            'Rab, 07 Jun 2023 - Sel, 13 Jun 2023',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          color: Colors.black,
                                        ),
                                        RadioListTile(
                                          value: 2,
                                          groupValue: _value,
                                          onChanged: (val) {
                                            setState(() {
                                              _value = val!;
                                            });
                                          },
                                          activeColor: Color(0xff1d77ca),
                                          title: Text(
                                            '30 Hari Terakhir',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          subtitle: Text(
                                            'Sen, 15 Mei 2023 - Sel, 13 Jun 2023',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          color: Colors.black,
                                        ),
                                        RadioListTile(
                                          value: 3,
                                          groupValue: _value,
                                          onChanged: (val) {
                                            setState(() {
                                              _value = val!;
                                            });
                                          },
                                          activeColor: Color(0xff1d77ca),
                                          title: Text(
                                            'Atur Tanggal',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          subtitle: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Icons.calendar_month),
                                                  TextButton(
                                                    onPressed: pickDateRange,
                                                    child: Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        DateFormat.yMMMd()
                                                            .format(start),
                                                        style:
                                                            GoogleFonts.poppins(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.calendar_month),
                                                  TextButton(
                                                    style:
                                                        TextButton.styleFrom(),
                                                    onPressed: pickDateRange,
                                                    child: Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        DateFormat.yMMMd()
                                                            .format(end),
                                                        style:
                                                            GoogleFonts.poppins(
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
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          width: 400,
                                          height: 50,
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    side: BorderSide(
                                                        color: Color(
                                                            0xff1d77ca)))),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text(
                                              'Pasang Filter',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Tanggal',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('assets/drop.png')
                          ],
                        )),
                  ),
                ),
                Tab(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.white))),
                    child: TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                              isDismissible: false,
                              context: context,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30))),
                              builder: (BuildContext context) =>
                                  StatefulBuilder(builder:
                                      (BuildContext, StateSetter setState) {
                                    return Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20, left: 20, right: 20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Pilih Kategori',
                                                style: GoogleFonts.poppins(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Container(
                                                width: 100,
                                                child: TextButton(
                                                    style: TextButton.styleFrom(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30),
                                                            side: BorderSide(
                                                                color: Color(
                                                                    0xff1d77ca)))),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text(
                                                      'Batal',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        RadioListTile(
                                          value: 1,
                                          groupValue: _value,
                                          onChanged: (val) {
                                            setState(() {
                                              _value = val!;
                                            });
                                          },
                                          activeColor: Color(0xff1d77ca),
                                          title: Text(
                                            'Cuti Tahunan',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          color: Colors.black,
                                        ),
                                        RadioListTile(
                                          value: 2,
                                          groupValue: _value,
                                          onChanged: (val) {
                                            setState(() {
                                              _value = val!;
                                            });
                                          },
                                          activeColor: Color(0xff1d77ca),
                                          title: Text(
                                            'Cuti Bulanan',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          color: Colors.black,
                                        ),
                                        RadioListTile(
                                          value: 3,
                                          groupValue: _value,
                                          onChanged: (val) {
                                            setState(() {
                                              _value = val!;
                                            });
                                          },
                                          activeColor: Color(0xff1d77ca),
                                          title: Text(
                                            'Cuti Sakit',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 100,
                                        ),
                                        Container(
                                          width: 400,
                                          height: 50,
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    side: BorderSide(
                                                        color: Color(
                                                            0xff1d77ca)))),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text(
                                              'Pasang Filter',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Kategori',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset('assets/drop.png')
                          ],
                        )),
                  ),
                ),
                Tab(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.white))),
                    child: TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                            isDismissible: false,
                            context: context,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(30))),
                            builder: (context) => StatefulBuilder(
                              builder: (BuildContext, StateSetter setState) {
                                return Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 20, right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Pilih Status',
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Container(
                                            width: 100,
                                            child: TextButton(
                                                style: TextButton.styleFrom(
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        side: BorderSide(
                                                            color: Color(
                                                                0xff1d77ca)))),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  'Batal',
                                                  style: GoogleFonts.poppins(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    RadioListTile(
                                      value: 1,
                                      groupValue: _value,
                                      onChanged: (val) {
                                        setState(() {
                                          _value = val!;
                                        });
                                      },
                                      activeColor: Color(0xff1d77ca),
                                      title: Text(
                                        'Proses',
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.black,
                                    ),
                                    RadioListTile(
                                      value: 2,
                                      groupValue: _value,
                                      onChanged: (val) {
                                        setState(() {
                                          _value = val!;
                                        });
                                      },
                                      activeColor: Color(0xff1d77ca),
                                      title: Text(
                                        'Selesai',
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      height: 150,
                                    ),
                                    Container(
                                      width: 400,
                                      height: 50,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                side: BorderSide(
                                                    color: Color(0xff1d77ca)))),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          'Pasang Filter',
                                          style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Status',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('assets/drop.png')
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Color(0xff1d77ca),
          elevation: 10,
          splashColor: Colors.lightBlue,
          onPressed: () {
            {
              (context, listen: false);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => formcuti(),
                  ),
                  (route) => false);
            }
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Container(
        margin: EdgeInsets.only(top: 30, right: 30, left: 30),
        child: ListView(children: [
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '30 September 2020',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Slidable(
                startActionPane: ActionPane(motion: StretchMotion(), children: [
                  SlidableAction(
                    onPressed: ((context) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              title: Text('Edit riwayat perjalanan dinas'),
                              content: Text(
                                  'Anda yakin untuk mengedit riwayat perjalanan dinas ini?'),
                              actions: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            textStyle: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                            side:
                                                BorderSide(color: Colors.black),
                                            primary: Colors.black),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Batal')),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green),
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => formcuti(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Edit',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
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
                endActionPane: ActionPane(motion: StretchMotion(), children: [
                  SlidableAction(
                    onPressed: ((context) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              title: Text('Hapus riwayat perjalanan dinas'),
                              content: Text(
                                  'Anda yakin untuk menghapus riwayat perjalanan dinas ini?'),
                              actions: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            textStyle: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                            side:
                                                BorderSide(color: Colors.black),
                                            primary: Colors.black),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Batal')),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.red),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          'Hapus',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
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
                  child: GestureDetector(
                    onTap: () {
                      {
                        (context, listen: false);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => detailcuti(),
                            ),
                            (route) => false);
                      }
                      ;
                    },
                    child: ListTile(
                      leading: Image.asset('assets/cuti1.png'),
                      title: Text(
                        'Cuti Tahunan',
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
                              'Indira Ayu',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '21-10-2021 s/d 21-11-2021',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        'Selesai',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Slidable(
                startActionPane: ActionPane(motion: StretchMotion(), children: [
                  SlidableAction(
                    onPressed: ((context) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              title: Text('Edit riwayat perjalanan dinas'),
                              content: Text(
                                  'Anda yakin untuk mengedit riwayat perjalanan dinas ini?'),
                              actions: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            textStyle: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                            side:
                                                BorderSide(color: Colors.black),
                                            primary: Colors.black),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Batal')),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green),
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => formcuti(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Edit',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
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
                endActionPane: ActionPane(motion: StretchMotion(), children: [
                  SlidableAction(
                    onPressed: ((context) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              title: Text('Hapus riwayat perjalanan dinas'),
                              content: Text(
                                  'Anda yakin untuk menghapus riwayat perjalanan dinas ini?'),
                              actions: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            textStyle: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                            side:
                                                BorderSide(color: Colors.black),
                                            primary: Colors.black),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Batal')),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.red),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          'Hapus',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
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
                  child: GestureDetector(
                    onTap: () {
                      {
                        (context, listen: false);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => detailcuti(),
                            ),
                            (route) => false);
                      }
                      ;
                    },
                    child: ListTile(
                      leading: Image.asset('assets/cuti1.png'),
                      title: Text(
                        'Cuti Bulanan',
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
                              'Indira Ayu',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '21-10-2021 s/d 21-11-2021',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        'Selesai',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Slidable(
                startActionPane: ActionPane(motion: StretchMotion(), children: [
                  SlidableAction(
                    onPressed: ((context) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              title: Text('Edit riwayat perjalanan dinas'),
                              content: Text(
                                  'Anda yakin untuk mengedit riwayat perjalanan dinas ini?'),
                              actions: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            textStyle: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                            side:
                                                BorderSide(color: Colors.black),
                                            primary: Colors.black),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Batal')),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green),
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => formcuti(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Edit',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
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
                endActionPane: ActionPane(motion: StretchMotion(), children: [
                  SlidableAction(
                    onPressed: ((context) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              title: Text('Hapus riwayat perjalanan dinas'),
                              content: Text(
                                  'Anda yakin untuk menghapus riwayat perjalanan dinas ini?'),
                              actions: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            textStyle: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                            side:
                                                BorderSide(color: Colors.black),
                                            primary: Colors.black),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Batal')),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.red),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          'Hapus',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
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
                  child: GestureDetector(
                    onTap: () {
                      {
                        (context, listen: false);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => detailcuti(),
                            ),
                            (route) => false);
                      }
                      ;
                    },
                    child: ListTile(
                      leading: Image.asset('assets/cuti1.png'),
                      title: Text(
                        'Cuti Sakit',
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
                              'Indira Ayu',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '21-10-2021 s/d 21-11-2021',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        'Proses',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
            ],
          ),
        ]),
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
