import 'package:flutter/material.dart';
import 'package:park_avm/feature/anasayfa/model/anasayfa_model.dart';
import 'package:park_avm/feature/anasayfa/anasayfa_magaza/view/magazafav.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/Resim1.jpg"),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.black,
              ),
              Text(
                "Adres",
                style: TextStyle(color: Colors.black, fontSize: 23),
              )
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.red),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ESPARK MAVİ'DE",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Text(
                    "İNDİRİM",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 75),
                  ),
                  Text(
                    "%30'A VARAN",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 3),
                  ),
                  Text(
                    "SEÇİLİ SEZON ÜRÜNLERİNDE",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7), fontSize: 17),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: ListView.builder(
                  itemCount: anasayfaModelList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MagazaFav()));
                        },
                        child: Image.asset(
                          anasayfaModelList[index].imgUrl,
                          scale: 0.5,
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
