import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:park_avm/feature/anasayfa/magazaurun/model/magaza_urun_model.dart';

class MagazaSayfasi extends StatefulWidget {
  const MagazaSayfasi({super.key});

  @override
  State<MagazaSayfasi> createState() => _MagazaSayfasiState();
}

class _MagazaSayfasiState extends State<MagazaSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            size: 35,
            Icons.notifications,
            color: Colors.black,
          )
        ],
        leading: Padding(
          padding: EdgeInsets.all(3.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 35.0),
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
          Container(
            height: 150,
            child: Image.asset(
              'assets/images/mavisayfası.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.sort,
                        size: 35,
                        color: Colors.black,
                      ),
                      Text('SIRALA'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.filter_alt_outlined,
                        size: 35,
                        color: Colors.black,
                      ),
                      Text('FİLTRELE')
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            flex: 4,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: magazaUrunList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(magazaUrunList[index].resimUrl,
                                fit: BoxFit.cover, height: 135),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_border_outlined)),
                                IconButton(
                                    onPressed: () {},
                                    icon:
                                        Icon(Icons.add_shopping_cart_outlined))
                              ],
                            )
                          ],
                        ),
                        Text(
                          magazaUrunList[index].aciklama,
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          magazaUrunList[index].fiyat,
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
