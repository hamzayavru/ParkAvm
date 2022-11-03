import 'package:flutter/material.dart';
import 'package:park_avm/feature/anasayfa/model/anasayfa_model.dart';
import 'package:park_avm/feature/anasayfa/anasayfa_magaza/magazazaviewmodel/magazafav_model.dart';
import 'package:park_avm/feature/anasayfa/magazaurun/view/magazasayfas%C4%B1.dart';

class MagazaFav extends StatefulWidget {
  const MagazaFav({Key? key}) : super(key: key);

  @override
  State<MagazaFav> createState() => _MagazaFavState();
}

class _MagazaFavState extends State<MagazaFav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  Padding(
          padding: EdgeInsets.all(3.0),
          child: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
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
          Text(
            'MAĞAZALAR',
            style: TextStyle(color: Colors.red, fontSize: 25),
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search_outlined),
              hintText: 'ARAMA',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: magazafavModelList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MagazaSayfasi()));
                      },
                      child: Image.asset(
                        magazafavModelList[index].imgUrl_1,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
