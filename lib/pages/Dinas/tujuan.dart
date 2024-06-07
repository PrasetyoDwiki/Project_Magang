import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Dinas/form_dinas.dart';
import 'package:google_fonts/google_fonts.dart';
import 'city.dart';

class tujuan extends StatefulWidget {
  const tujuan({super.key});

  @override
  State<tujuan> createState() => _tujuanState();
}

class _tujuanState extends State<tujuan> {
  final controller = TextEditingController();
  List<City> city = allCity;

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
          "Pilih Keberangkatan",
          style: GoogleFonts.poppins(
              color: Color(0xffffffff),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1D77CA),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Column(
          children: [
            TextField(
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Cari Kota atau Perusahaan',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black, width: 5),
                ),
              ),
              onChanged: searchCity,
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Terakhir dicari',
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: city.length,
                itemBuilder: (context, index) {
                  final City = city[index];
                  return Card(
                    child: ListTile(
                      title: Text(
                        City.title,
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => formbisnis())),
                      subtitle: Text(
                        City.subtitle,
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.black),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void searchCity(String query) {
    final suggestions = allCity.where((City) {
      final Citysubtitle = City.subtitle.toLowerCase();
      final input = query.toLowerCase();

      return Citysubtitle.contains(input);
    }).toList();

    setState(() => city = suggestions);
  }
}
