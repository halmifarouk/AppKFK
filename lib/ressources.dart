
/*
https://drissas.com/flutter-tuto-francais-tiktok/
https://www.youtube.com/watch?v=oaKpdSS2YuU
https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html
https://www.youtube.com/watch?v=yI8_kXpMeps

https://www.youtube.com/watch?v=HnaQE7DkGiM video qui explique comment faire pour tester l'app via pwa

faut faire une profil page
faut faire une events page
faut faire trop de pages


boutton de base:
body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                ),
              },
              child: Row(
                children: const [
                  Icon(Icons.add),
                  Text("Retour à la page de connexion")
                ],
              ),
            ),
          ],
        ),
      ),

onDestinationSelected: (index) => setState(() => this.index = index),



  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // ignore: unused_field
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Page d accueil',
      style: optionStyle,
    ),
    Text(
      'Evènements',
      style: optionStyle,
    ),
    Text(
      'Archives',
      style: optionStyle,
    ),
    Text(
      'Profil',
      style: optionStyle,
    )
  ];

bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Evènements',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Achives',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,//fixed pour bloquer ou shifting -> pour avoir les icones qui changent de taille quand on clique dessus
        showUnselectedLabels: false,
        backgroundColor: const Color.fromARGB(153, 180, 180, 180),
        selectedItemColor: const Color.fromARGB(255, 65, 132, 240),
        unselectedItemColor: const Color.fromARGB(255, 65, 132, 240),
        onTap: _onItemTapped,
      ),



Scaffold(
      body: /*const MainPage(),*/ pages[index],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) => setState(() => this.index = index),
        selectedIndex: index,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          NavigationDestination(
            icon: Icon(Icons.event),
            label: 'Evènements',
          ),
          NavigationDestination(
            icon: Icon(Icons.folder),
            label: 'Achives',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: 'Profil',
          ),
        ],
        backgroundColor: const Color.fromARGB(153, 180, 180, 180),
      ),
    );
  }









Scaffold(
      body: PageView.builder(
          onPageChanged: (page) {
            setState(() {
              selectedIndex = page;
            });
          }, itemBuilder: (BuildContext context, int index) {
            return pages[index];
          },
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal:15,
            vertical: 15,
          ),
          child: GNav(
            gap: 8,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: const EdgeInsets.all(16),
            selectedIndex: index,
            onTabChange: (index) {
              selectedIndex = index;
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.event,
                text: 'Events',
              ),
              GButton(
                icon: Icons.folder,
                text: 'Archives',
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );

*/