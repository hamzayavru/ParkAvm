import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:park_avm/feature/anasayfa/view/anasayfa.dart';
import 'package:park_avm/feature/favori/view/favori.dart';
import 'package:park_avm/feature/profil/view/profil.dart';

import 'feature/sepet/view/sepetim.dart';

class DirectionPage extends StatefulWidget {
  const DirectionPage({Key? key}) : super(key: key);

  @override
  _DirectionPageState createState() => _DirectionPageState();
}

class _DirectionPageState extends State<DirectionPage> {
  int _aktifNo = 0;
  late PageController sayfaKumandasi;

  @override
  void initState() {
    super.initState();
    sayfaKumandasi = PageController();
  }

  @override
  void dispose() {
    sayfaKumandasi.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (acilanSayfaNo) {
          setState(() {
            _aktifNo = acilanSayfaNo;
          });
        },
        controller: sayfaKumandasi,
        children: [Anasayfa(), FavoriPage(), SepetPage(), ProfilPage()],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50.0,
        items: const <Icon>[
          Icon(Icons.home, size: 35, color: Colors.white),
          Icon(Icons.favorite, size: 35, color: Colors.white),
          Icon(Icons.shopping_cart_outlined, size: 35, color: Colors.white),
          Icon(Icons.person, size: 35, color: Colors.white),
        ],
        color: Colors.red,
        buttonBackgroundColor: Colors.red,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (selectPage) {
          setState(() {
            sayfaKumandasi.jumpToPage(selectPage);
          });
        },
      ),
    );
  }
}
