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
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Column(
                    children: [
                      duyuru('Ali seni takip etti', '5 dk once'),
                      duyuru('Seda gonderine yorum yapti', '1 gun once'),
                      duyuru('Sinan bir mesaj gonderdi', '1 hafta once'),
                    ],
                  );
                },
              );
            },
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
                  'Gokce',
                  'https://cdn.pixabay.com/photo/2020/06/21/05/59/lady-5323329_1280.png',
                  'Gokce Basgok',
                  'https://cdn.pixabay.com/photo/2018/07/13/10/20/cat-3535404_960_720.jpg',
                ),
                profilKartiOlustur(
                  'Ali',
                  'https://cdn.pixabay.com/photo/2021/01/21/16/44/model-5937809_1280.jpg',
                  'Ali Çetin',
                  'https://cdn.pixabay.com/photo/2013/07/25/13/01/stones-167089__480.jpg',
                ),
                profilKartiOlustur(
                  'Seda',
                  'https://cdn.pixabay.com/photo/2019/08/01/05/59/girl-4376755_1280.jpg',
                  'Seda Kaya',
                  'https://cdn.pixabay.com/photo/2012/04/13/01/23/moon-31665__480.png',
                ),
                profilKartiOlustur(
                  'Mehmet',
                  'https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508__480.jpg',
                  'Mehmet Çınar',
                  'https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg',
                ),
                profilKartiOlustur(
                    'Gaye',
                    'https://cdn.pixabay.com/photo/2015/09/02/12/51/woman-918707__480.jpg',
                    'Gaye Pınar',
                    'https://cdn.pixabay.com/photo/2018/08/23/07/35/thunderstorm-3625405__480.jpg'),
                profilKartiOlustur(
                  'Sinan',
                  'https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814__480.jpg',
                  'Sinan Girit',
                  'https://cdn.pixabay.com/photo/2016/10/22/17/46/mountains-1761292__480.jpg',
                ),
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
            profilResimLinki:
                'https://cdn.pixabay.com/photo/2016/12/10/05/16/profile-1896698_1280.jpg',
            gonderiResimLinki:
                'https://cdn.pixabay.com/photo/2013/10/02/23/03/mountains-190055__480.jpg',
          ),
          GonderiKarti(
            isimSoyad: 'Esra Çınar',
            gecenSure: '2 sene önce',
            aciklama: 'Doğa...',
            profilResimLinki:
                'https://cdn.pixabay.com/photo/2016/10/07/19/57/profile-1722498__480.jpg',
            gonderiResimLinki:
                'https://cdn.pixabay.com/photo/2017/04/09/09/56/avenue-2215317__480.jpg',
          ),
          GonderiKarti(
            isimSoyad: 'Murat Öztürk',
            gecenSure: '6 ay önce',
            aciklama: 'Deniz',
            profilResimLinki:
                'https://cdn.pixabay.com/photo/2017/06/21/15/57/ruben-2427641__480.jpg',
            gonderiResimLinki:
                'https://cdn.pixabay.com/photo/2014/08/15/11/29/beach-418742__480.jpg',
          ),
          GonderiKarti(
            isimSoyad: 'Selim Kaya',
            gecenSure: '1 ay önce',
            aciklama: 'Gökkuşağı..',
            profilResimLinki:
                'https://cdn.pixabay.com/photo/2021/01/05/13/22/man-5891131__480.jpg',
            gonderiResimLinki:
                'https://cdn.pixabay.com/photo/2014/10/20/13/41/rainbow-495287__480.jpg',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple[300],
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    );
  }

  Padding duyuru(String mesaj, String gecenSure) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mesaj,
            style: TextStyle(fontSize: 15.0),
          ),
          Text(gecenSure),
        ],
      ),
    );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String profilLinki,
      String isimSoyad, String kapakResimLinki) {
    return Material(
      child: InkWell(
        onTap: () async {
          Future<bool> donenVeri = Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => ProfilSayfasi(
                profilResimLinki: profilLinki,
                kullaniciAdi: kullaniciAdi,
                isimSoyad: isimSoyad,
                kapakResimLinki: kapakResimLinki,
              ),
            ),
          );
          if (await donenVeri) {
            print('Kullanici profil sayfasindan dondu...');
          }
        },

        // // async/await için alternatif kullanım:
        // onTap: () async {
        //   bool donenVeri = await Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (BuildContext context) => ProfilSayfasi(
        //         profilResimLinki: profilLinki,
        //         kullaniciAdi: kullaniciAdi,
        //         isimSoyad: isimSoyad,
        //         kapakResimLinki: kapakResimLinki,
        //       ),
        //     ),
        //   );
        //   if (donenVeri) {
        //     print('Kullanici profil sayfasindan dondu...');
        //   }
        // },

        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Hero(
                    tag: kullaniciAdi,
                    child: Container(
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
