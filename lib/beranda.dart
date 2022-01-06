import 'package:flutter/material.dart';
import 'package:uas_maps/pombensin.dart';
import 'package:uas_maps/puskesmas.dart';
import 'package:uas_maps/sekolah.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: ListView(
        children: [
          const Text(
            "Silahkan pilih Lokasi",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.amber),
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/mosque.jpg",
            height: 200,
            width: 300,
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Sekolah();
              }));
            },
            child: Container(
                margin: EdgeInsets.all(15),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.amber[400],
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/sekolah.png",
                      width: 40,
                      height: 40,
                    ),
                    const Text(
                      " Sekolah",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Puskesmas();
              }));
            },
            child: Container(
                margin: EdgeInsets.all(15),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.amber[400],
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/rs.png",
                      width: 40,
                      height: 40,
                    ),
                    const Text(
                      " Puskesmas",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return PomBensin();
              }));
            },
            child: Container(
                margin: EdgeInsets.all(15),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.amber[400],
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/pom.png",
                      width: 40,
                      height: 40,
                    ),
                    const Text(
                      " Pom Bensin",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ),
        ],
      ),
    ));
  }
}
