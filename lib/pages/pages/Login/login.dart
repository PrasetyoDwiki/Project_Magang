import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Login/lupapassword.dart';
import 'package:flutter_application_1/provider/auth_provider.dart';
import 'package:flutter_application_1/widgets/loading_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _LoginState();
}

class _LoginState extends State<login> {
  bool? isChecked = false;
  bool isLoading = false;

  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  bool passToogle = true;
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignIn() async {
      setState(() {
        isLoading = true;
      });

      if (await authProvider.login(
          email: emailController.text, password: passwordController.text)) {
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Gagal Login!',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }

      setState(() {
        isLoading = false;
      });
    }

    Widget header() {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Image.asset(
              'assets/logo_login.png',
              width: 100,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text('Masuk ke Aplikasi',
              style: GoogleFonts.poppins(
                  color: Color(0xff000000),
                  fontSize: 20,
                  fontWeight: FontWeight.w700)),
          // SizedBox(
          //   height: 50,
          // ),

          // SizedBox(
          //   height: 20,
          // ),

          // SizedBox(
          //   height: 10,
          // ),

          // SizedBox(
          //   height: 150,
          // ),
        ],
      );
    }

    Widget emailInput() {
      return Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text('Email',
                style: GoogleFonts.poppins(
                    color: Color(0xff3E3E3E),
                    fontSize: 15,
                    fontWeight: FontWeight.w700)),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(height: 5),
          TextFormField(
            controller: emailController,
            style: TextStyle(
                color: Color(0xff444444),
                fontSize: 17,
                fontWeight: FontWeight.w600),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.verified_user),
              hintText: 'Isi dengan alamat email anda',
              hintStyle: GoogleFonts.poppins(
                  color: Color.fromRGBO(110, 124, 141, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ],
      );
    }

    Widget passwordInput() {
      return Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text('Kata sandi',
                style: GoogleFonts.poppins(
                    color: Color(0xff3E3E3E),
                    fontSize: 15,
                    fontWeight: FontWeight.w700)),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            controller: passwordController,
            style: TextStyle(
                color: Color(0xff444444),
                fontSize: 17,
                fontWeight: FontWeight.w600),
            obscureText: passToogle,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: 'Isi dengan kata sandi anda',
              hintStyle: GoogleFonts.poppins(
                  color: Color.fromRGBO(110, 124, 141, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
              suffix: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        passToogle = !passToogle;
                      });
                    },
                    child: Icon(
                        passToogle ? Icons.visibility : Icons.visibility_off),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    Widget signInButton() {
      return Container(
        width: 400,
        height: 60,
        child: TextButton(
          style: TextButton.styleFrom(
              elevation: 10,
              backgroundColor: Color(0xff1D77CA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              )),
          onPressed: handleSignIn,
          child: Text(
            'Masuk',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
              value: isChecked,
              activeColor: Color(0xff1d77ca),
              onChanged: (newBool) {
                setState(() {
                  isChecked = newBool;
                });
              }),
          Text('Ingat Saya',
              style: GoogleFonts.poppins(
                  color: Color(0xff3E3E3E),
                  fontSize: 15,
                  fontWeight: FontWeight.w600)),
          SizedBox(
            width: 110,
          ),
          GestureDetector(
            onTap: () {
              (context, listen: false);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => lupapassword()),
              ).then((value) {
                setState(() {});
              });
            },
            child: Text('Lupa kata sandi?',
                style: GoogleFonts.poppins(
                    color: Color(0xff1d77ca),
                    fontSize: 15,
                    fontWeight: FontWeight.w600)),
          )
        ],
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          children: [
            header(),
            SizedBox(
              height: 50,
            ),
            emailInput(),
            SizedBox(
              height: 20,
            ),
            passwordInput(),
            SizedBox(
              height: 10,
            ),
            footer(),
            SizedBox(
              height: 150,
            ),
            isLoading ? LoadingButton() : signInButton(),
          ],
        ),
      )),
    );
  }
}
