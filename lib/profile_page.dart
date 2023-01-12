import 'package:app_kfk/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.black,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            PictureNickname(),
            BarRelations(),
            Description(),
            ButtonEdit(),
            Deconection(),
            SizedBox(height: 10,),
          ]
        ),
      ),
    );
  }
}



class PictureNickname extends StatelessWidget {
  const PictureNickname({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10,10,10,10),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.black, 
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container( 
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    "lib/assets/images/WhatsApp Image 2023-01-10 at 02.38.02.jpeg",
                    scale: 2
                  ),
                ), 
              ],
            )
          ), 
        ),
        Center(
          child: Container(
            height: 70,
            width: 165,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 71, 69, 69),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                '@NomDeProfil',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BarRelations extends StatelessWidget {
  const BarRelations({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10,10,10,0),
        child: Row(
          children : [
            Container(
              height: 70,
              width: 165,     
              margin: const EdgeInsets.all(9),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 71, 69, 69), 
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Abonné(e)s      3458',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),      
            ),     
            Container(
              height: 70,
              width: 165,    
            margin: const EdgeInsets.all(9),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 71, 69, 69), 
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                'Abonnements  476',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),  
        ]
      ),          
    ); 
  }
}

class Description extends StatelessWidget {
  const Description({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10,10,10,0),
          child: Container(
            width: 370,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.black, 
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: Column(
                children: [
                  Container(
                    height: 174,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Entrez votre description',
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ButtonEdit extends StatelessWidget {
  const ButtonEdit({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child:  Center(
            child: FloatingActionButton.extended(
              onPressed: () => {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen()
                ),
              ),
              },   
              label: const Text(
                'Modifier',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 12,
                ),
              ),
              icon: const Icon(Icons.edit_outlined),
              backgroundColor: Color.fromARGB(255, 71, 69, 69),
            ),
          ),
        ),
      ],
    );
  }
}

class Deconection extends StatelessWidget {
  const Deconection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: FloatingActionButton.extended(
          onPressed: () => {Navigator.push(
          context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen()
            ),
          ),}, 
          label: const Text(
            'Déconection',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800
            ),
          ),
          icon: const Icon(Icons.output_outlined),
          backgroundColor: Color.fromARGB(255, 71, 69, 69),
        ),
      ),
    );
  }
}