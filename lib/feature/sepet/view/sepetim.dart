import 'package:flutter/material.dart';
import 'package:park_avm/feature/anasayfa/magazaurun/model/magaza_urun_model.dart';

class SepetPage extends StatefulWidget {
  const SepetPage({Key? key}) : super(key: key);

  @override
  State<SepetPage> createState() => _SepetPageState();
}

class _SepetPageState extends State<SepetPage> {
  List<int> adet=[0,0];
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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_outlined),
                  hintText: 'ARA',
                  isDense: true,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: Colors.blueGrey),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: sepetUrunList.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Expanded(
                      
                      child: Image.asset(
                        sepetUrunList[index].resimUrl,
                        fit: BoxFit.contain,
                        height: 200,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*0.19,
                          
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                sepetUrunList[index].aciklama,
                                style: TextStyle(fontSize: 18),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(onPressed: (){
                                         setState(() {
                                          if (adet[index]<=0) {
                                            adet[index]=0;
                                          }else{
                                            adet[index]-=1;
                                          }
                                          
                                        });
                                        
                                      }, icon: Icon(Icons.remove),),
                                      Text(adet[index].toString(),style: TextStyle(fontSize: 16),),
                                      IconButton(onPressed: (){
                                       setState(() {
                                          adet[index]+=1;
                                        });
                                      }, icon: Icon(Icons.add),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: Text(
                            "${sepetUrunList[index].fiyat} TL",
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' Toplam: 459,98 TL',
                    style: TextStyle(fontSize: 20),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 10,
                      ),
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Sepeti Onayla'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
