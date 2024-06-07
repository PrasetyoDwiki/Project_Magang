import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Biaya/biaya_estimasi.dart';
import 'package:flutter_application_1/pages/Biaya/biaya_perbandingan.dart';
import 'package:flutter_application_1/pages/Biaya/biaya_realisasi.dart';
import 'package:flutter_application_1/pages/Dinas/detail_dinas.dart';
import 'package:google_fonts/google_fonts.dart';

class tabbar extends StatefulWidget {
  const tabbar({super.key});

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
                    builder: (context) => detailbisnis(),
                  ),
                  (route) => false);
            },
            child: Image.asset('assets/back.png'),
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        )),
        title: Text(
          "Biaya",
          style: GoogleFonts.poppins(
              color: Color(0xffffffff),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1D77CA),
        bottom: TabBar(
          controller: controller,
          labelPadding: EdgeInsets.only(bottom: 10),
          labelStyle: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
          indicatorColor: Colors.white,
          indicatorPadding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
          tabs: [
            Tab(
              text: "Estimasi",
            ),
            Tab(
              text: "Realisasi",
            ),
            Tab(
              text: "Perbandingan",
            ),
          ],
        ),
      ),
      body: TabBarView(controller: controller, children: [
        estimasi(),
        realisasi(),
        perbandingan(),
      ]),
    );
  }
}
