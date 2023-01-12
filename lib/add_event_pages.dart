import 'package:app_kfk/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class AddEventPage extends StatelessWidget {
  
  String title='dfze';
  String description='feqfqrf';
  int DayNewEvent=9;
  int HourNewEvent=12;
  int AnneeNewEvent=2023;
  int MoisNewEvent=1;


  AddEventPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.black,
        title: const Text(
          'Evènements',
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
            Titre(),
            NewTitle(),
            Description(),
            Heure(),
            Jour(),
            Mois(),
            Annee(),
            Valider(),
          ],
        )  
      ),
    );
  }
}

class Titre extends StatelessWidget {
  const Titre({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10,10,10,0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black,
        ),
        child: const Center(
          child: Text(
            'Complétez les informations suivantes :',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 15,
            ),
          ),
        )
      ),
    );
  }
}


class NewTitle extends StatelessWidget {
  const NewTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15,10,10,0),
      child: Container(
        height: 30,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 126, 126, 126),
            blurRadius: 4,
            offset: Offset(0, 3),
            ),
          ],
        ),
        child: const TextField(
          /*onChanged: (input) { 
            title = input,
          },  */
          decoration: InputDecoration(
            hintText: 'Entrez le titre de l event',
            contentPadding: EdgeInsets.all(10),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}



class Description extends StatelessWidget {
  const Description({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15,10,10,0),
      child: Container(
        height: 30,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 126, 126, 126),
            blurRadius: 4,
            offset: Offset(0, 3),
            ),
          ],
        ),
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Entrez la description de l event',
            contentPadding: EdgeInsets.all(10),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}


class Heure extends StatelessWidget {
  const Heure({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15,10,10,0),
      child: Container(
        height: 30,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 126, 126, 126),
            blurRadius: 4,
            offset: Offset(0, 3),
            ),
          ],
        ),
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Entrez l heure de l event',
            contentPadding: EdgeInsets.all(10),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}


class Jour extends StatelessWidget {
  const Jour({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15,10,10,0),
      child: Container(
        height: 30,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 126, 126, 126),
            blurRadius: 4,
            offset: Offset(0, 3),
            ),
          ],
        ),
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Entrez le jour de l event',
            contentPadding: EdgeInsets.all(10),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

class Mois extends StatelessWidget {
  const Mois({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15,10,10,0),
      child: Container(
        height: 30,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 126, 126, 126),
            blurRadius: 4,
            offset: Offset(0, 3),
            ),
          ],
        ),
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Entrez le mois de l event',
            contentPadding: EdgeInsets.all(10),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

class Annee extends StatelessWidget {
  const Annee({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15,10,10,0),
      child: Container(
        height: 30,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 126, 126, 126),
            blurRadius: 4,
            offset: Offset(0, 3),
            ),
          ],
        ),
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Entrez l année de l event',
            contentPadding: EdgeInsets.all(10),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

class Valider extends StatelessWidget {
  const Valider({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
        child: FloatingActionButton.extended(
          onPressed: () => {Navigator.push(
          context,
            MaterialPageRoute(
              builder: (context) => const MyStatefulWidget()
            ),
          ),}, 
          label: const Text(
            'Valider',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800
            ),
          ),
          icon: const Icon(Icons.check),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}