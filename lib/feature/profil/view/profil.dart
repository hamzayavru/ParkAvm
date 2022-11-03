import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
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
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/user.png"),
                    minRadius: 35,
                    maxRadius: 45,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                     Padding(
                        padding:  EdgeInsets.all(2.0),
                        child: Text(
                          "Ahmet Faruk YAVRU",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "ahmetfaruk@icloud.com",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "+905070647125",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          const Divider(
            color: Colors.redAccent,
            height: 5,
            thickness: 3,
            indent: 25,
            endIndent: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BuildOptions(
                  iconUrl: "assets/images/siparisler.png",
                  title: "Siparişlerim",
                ),
                BuildOptions(
                  iconUrl: "assets/images/ödemeSecenekleri.png",
                  title: "Kartlarım",
                ),
                BuildOptions(
                  iconUrl: "assets/images/indirimKuponu.png",
                  title: "Kuponlarım",
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.redAccent,
            height: 5,
            thickness: 3,
            indent: 25,
            endIndent: 25,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width*0.08,
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(16),
                child: ListView(
                  children: [
            buildSettings("Hesabım"),
            buildSettings("Canlı Destek"),
            buildSettings("Hesap Ayarları"),
            buildSettings("Yardım"),
            buildSettings("Çıkış"),
           
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }

  Padding buildSettings(String title) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: GestureDetector(
              onTap: () {
              },
              child:  Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                color: Colors.red,

                child: ListTile(
                   
                  title: Text(title,style: TextStyle(color: Colors.white,fontSize: 20),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                ),
              ),
            ),
    );
  }
}

class CustomButton extends StatelessWidget {
   CustomButton({
    Key? key,
    required this.title,
  }) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(title,style: TextStyle(fontSize: 17),),
        style: ElevatedButton.styleFrom(
        
          padding: EdgeInsets.symmetric(vertical:15, horizontal:110 ),
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}

class BuildOptions extends StatelessWidget {
  BuildOptions({
    required this.iconUrl,
    required this.title,
    super.key,
  });
  String iconUrl;
  String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(iconUrl),
        ),
        Text(title)
      ],
    );
  }
}
