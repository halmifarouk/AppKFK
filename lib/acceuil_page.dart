import 'package:app_kfk/bottom_navigation_bar.dart';
import 'package:app_kfk/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcceuilPage extends StatelessWidget {
  const AcceuilPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column( 
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 270),
                child: Image.asset("lib/assets/images/logo_kfk1.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: FloatingActionButton.extended(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen()
                    ),
                  );
                  } , 
                  label: Text(
                    'Bienvenue',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                    ), 
                  ),
                  backgroundColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}