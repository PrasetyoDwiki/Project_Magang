import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
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
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
                strokeWidth: 2,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Loading',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
