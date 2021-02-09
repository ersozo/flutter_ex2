import 'package:flutter/material.dart';
import 'gonderikarti.dart';
import 'profilsayfasi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
        backgroundColor: Colors.grey[100],
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[100],
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
            size: 32.0,
          ),
          onPressed: () {},
        ),
        title: Text(
          'SociaWorld',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.purple[300],
              size: 32.0,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 3.0),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                profilKartiOlustur(
                    'Ali', 'https://www.w3schools.com/howto/img_avatar.png'),
                profilKartiOlustur(
                    'Veli', 'https://www.w3schools.com/howto/img_avatar.png'),
                profilKartiOlustur(
                    'Burak', 'https://www.w3schools.com/howto/img_avatar.png'),
                profilKartiOlustur(
                    'Mehmet', 'https://www.w3schools.com/howto/img_avatar.png'),
                profilKartiOlustur(
                    'Selim', 'https://www.w3schools.com/howto/img_avatar.png'),
                profilKartiOlustur(
                    'Sinan', 'https://www.w3schools.com/howto/img_avatar.png'),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GonderiKarti(
            isimSoyad: 'Hakan Yaldız',
            gecenSure: '1 sene önce',
            aciklama: 'Geçen yazdan bir foto...',
            profilResimLinki: 'https://www.w3schools.com/howto/img_avatar.png',
            gonderiResimLinki:
                'https://cdn.pixabay.com/photo/2013/10/02/23/03/mountains-190055__480.jpg',
          ),
          GonderiKarti(
            isimSoyad: 'Esra Çınar',
            gecenSure: '2 sene önce',
            aciklama: 'Doğa...',
            profilResimLinki: 'https://www.w3schools.com/howto/img_avatar.png',
            gonderiResimLinki:
                'https://cdn.pixabay.com/photo/2017/04/09/09/56/avenue-2215317__480.jpg',
          ),
          GonderiKarti(
            isimSoyad: 'Murat Öztürk',
            gecenSure: '6 ay önce',
            aciklama: 'Deniz',
            profilResimLinki: 'https://www.w3schools.com/howto/img_avatar.png',
            gonderiResimLinki:
                'https://cdn.pixabay.com/photo/2014/08/15/11/29/beach-418742__480.jpg',
          ),
          GonderiKarti(
            isimSoyad: 'Selim Kaya',
            gecenSure: '1 ay önce',
            aciklama: 'Gökkuşağı..',
            profilResimLinki: 'https://www.w3schools.com/howto/img_avatar.png',
            gonderiResimLinki:
                'https://cdn.pixabay.com/photo/2014/10/20/13/41/rainbow-495287__480.jpg',
          ),
        ],
      ),
    );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String profilLinki) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ProfilSayfasi()));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 2.0,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(35.0),
                        image: DecorationImage(
                          image: NetworkImage(profilLinki),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                kullaniciAdi,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

