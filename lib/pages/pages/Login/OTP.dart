import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/Login/lupapassword.dart';
import 'package:flutter_application_1/pages/Login/buat_ulang_katasandi.dart';
import 'package:google_fonts/google_fonts.dart';

class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  @override
  Widget build(BuildContext context) {
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
                    builder: (context) => lupapassword(),
                  ),
                  (route) => false);
            },
            child: Image.asset('assets/back.png'),
          ),
        ),
        title: Text(
          "OTP",
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
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Text(
                'Verifikasi OTP',
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Kode OTP telah dikirim ke email adm**@gmail.com Silakan masukkan kode OTP dibawah untuk verifikasi. ',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Tidak Menerima kode OTP?',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Text('Kirim Ulang Kode OTP',
                    style: GoogleFonts.poppins(
                        color: Color(0xff1d77ca),
                        fontSize: 15,
                        fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: 170,
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
                    {
                      (context, listen: false);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ubahkatasandi()),
                      );
                    }
                    ;
                  },
                  child: Text(
                    'Selanjutnya',
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
    );
  }
}
