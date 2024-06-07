import 'package:flutter/material.dart';
import 'package:flutter_application_1/navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class ubahpassword extends StatefulWidget {
  const ubahpassword({super.key});

  @override
  State<ubahpassword> createState() => _ubahpasswordState();
}

class _ubahpasswordState extends State<ubahpassword> {
  bool passToogle = true;
  bool passToogle1 = true;
  bool passToogle2 = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        (context, listen: false);
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => navbar(index: 3)),
                        );
                      },
                      child: Image.asset('assets/back2.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Ubah Password',
                        style: GoogleFonts.poppins(
                          fontSize: 35,
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
                  child: Text('Password Lama',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w700)),
                ),
                TextFormField(
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                  obscureText: passToogle,
                  decoration: InputDecoration(
                    hintText: 'Isi dengan password anda',
                    hintStyle: GoogleFonts.poppins(
                        color: Color.fromRGBO(110, 124, 141, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          passToogle = !passToogle;
                        });
                      },
                      child: Icon(
                          passToogle ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password masih kosong';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Password Baru',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w700)),
                ),
                TextFormField(
                  style: TextStyle(
                      color: Color(0xff444444),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                  obscureText: passToogle1,
                  decoration: InputDecoration(
                    hintText: 'Isi dengan password anda',
                    hintStyle: GoogleFonts.poppins(
                        color: Color.fromRGBO(110, 124, 141, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          passToogle1 = !passToogle1;
                        });
                      },
                      child: Icon(passToogle1
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password masih kosong';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Konfirmasi Password',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w700)),
                ),
                TextFormField(
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                  obscureText: passToogle2,
                  decoration: InputDecoration(
                    hintText: 'Isi dengan password anda',
                    hintStyle: GoogleFonts.poppins(
                        color: Color.fromRGBO(110, 124, 141, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          passToogle2 = !passToogle2;
                        });
                      },
                      child: Icon(passToogle2
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password masih kosong';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 350,
                ),
                Container(
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
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => navbar(
                              index: 3,
                            ),
                          ),
                          (route) => false);
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
