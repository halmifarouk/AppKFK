import 'package:app_kfk/add_event_pages.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';

class MainPage extends StatelessWidget implements PreferredSizeWidget{
  const MainPage({Key key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(40);
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        
        toolbarHeight: 50,
        backgroundColor: Colors.black,
        title: const Text(
          'Home',
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
            Succes(),
            Suite(),
            LikeButton(),
            Event(),
            LikeButton(),
            Events(),
            LikeButton(),
            Party(),
            LikeButton(),
            Dinguerie(),
            LikeButton(),
            AddEvent(),
            NextEvent(),
            SizedBox(
              height: 15,
            ),
          ]
        ),
      ),
    );
  }
}


class Succes extends StatelessWidget {
  const Succes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: const EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey.shade100
                    )
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(  
                  children: [
                    Container(
                      color: Colors.black,
                      margin: const EdgeInsets.only(left: 9),
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Succès:',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),  
                    ),
                    const SizedBox(
                      height: 15
                    ),
                    const SuccesWidgets()
                  ],
                ),
              ),
            ],
          ),     
        ),
      ],
    );
  }
}


class SuccesWidgets extends StatelessWidget {
  const SuccesWidgets({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left:5),
                height: 50,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 47, 7, 177),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[500],
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
            ),
          ], // children
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left:5),
                height: 50,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 185, 25, 13),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey[500],
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
            ),
          ], // children
        ),
      ], // children
    );
  }
}





class Suite extends StatelessWidget {
  const Suite({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.fromLTRB(10,10,10,10),
        
        child: Column(
          children: [
            Container(
              height: 20,
              width: 120,
              color: Colors.black,
              child: const Center(
                child: Text(
                  '@AnonymeUser',
                  style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                 ),
                ),
              ),
            ),
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Image.asset(
                          "lib/assets/images/ladies-night-party-landscape-flyer-design-template-1b3b220d26b31c127b7854b58af9564d_screen.jpg",
                          height: 300,
                          width: 450,
                        ),
            ),
          ],
        ),
      ); 
  }
}


class Event extends StatelessWidget {
  const Event({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.fromLTRB(10,10,10,10),
        
        child: Column(
          children: [
            Container(
              height: 20,
              width: 120,
              color: Colors.black,
              child: const Center(
                child: Text(
                  '@Dj Bruno Henry',
                  style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                 ),
                ),
              ),
            ),
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Image.asset(
                "lib/assets/images/color-run-3.jpg",
                height: 300,
                width: 450,
              ),
            ),
          ],
        ),
      ); 
  }
}

class Events extends StatelessWidget {
  const Events({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.fromLTRB(10,10,10,10),
        child: Column(
          children: [
            Container(
              height: 20,
              width: 120,
              color: Colors.black,
              child: const Center(
                child: Text(
                  '@UserArounTheWorld',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Image.asset(
              "lib/assets/images/freestyler-best-belgrade.jpg",
              height: 300,
              width: 450,
            ),
          ),
        ],
      ),
    ); 
  }
}

class Party extends StatelessWidget {
  const Party({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.fromLTRB(10,10,10,10),
        child: Column(
          children: [
            Container(
              height: 20,
              width: 120,
              color: Colors.black,
              child: const Center(
                child: Text(
                  '@David Guetta',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Image.asset(
                "lib/assets/images/istockphoto-1174882601-612x612.jpg",
                height: 300,
                width: 450,
              ),
            ),
          ],
        ),
      ); 
  }
}

class Dinguerie extends StatelessWidget {
  const Dinguerie({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10,10,10,10),
        child: Column(
          children: [
            Container(
              height: 20,
              width: 120,
              color: Colors.black,
              child: const Center(
                child: Text(
                  '@Travis Scott Babyy',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Image.asset(
                "lib/assets/images/holi-festival-images-4.webp",
                height: 300,
                width: 450,
              ),
            ),
          ],
        ),
      ); 
  }
}

class AddEvent extends StatelessWidget {
  const AddEvent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10,10,10,0),
        child: FloatingActionButton.extended(
          onPressed: () => {Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddEventPage()
            ),
          ),
          },
          label: const Text(
            'Nouvel Event',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
          icon: const Icon(Icons.add_location_outlined),
          backgroundColor: const Color.fromARGB(255, 63, 62, 62),
        ),
      ),
    );
  }
}

class NextEvent extends StatelessWidget {
  const NextEvent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10,10,10,0),
              child: Row(
                children: [
                  Container(
                    height: 175,
                    width: 370,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15,15,0,0),
                      child: Center(
                        child: Text(
                          "KiféKoi est une application mobile gratuite référençant les évènements, soirées et festivals autour de vous. Simplifiez vos soirées avec KiféKoi. Ajoutez vos lieux préférés en favoris, découvrez les lieux autour de vous et les prochains évènements à venir. ",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ), 
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DotWidget extends StatelessWidget {
  final double totalWidth, dashWidth, emptyWidth, dashHeight;

  final Color dashColor;

  const DotWidget({
    this.totalWidth = 300,
    this.dashWidth = 10,
    this.emptyWidth = 5,
    this.dashHeight = 2,
    this.dashColor = Colors.black,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        totalWidth ~/ (dashWidth + emptyWidth),
            (_) => Container(
          width: dashWidth,
          height: dashHeight,
          color: dashColor,
          margin: EdgeInsets.only(left: emptyWidth / 2, right: emptyWidth / 2),
        ),
      ),
    );
  }
}