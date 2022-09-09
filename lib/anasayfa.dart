import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  List <int> sayi = [];
  String gelenText = "";
  int sayi1 = 0;
  int sayi2 = 0;
  int sonuc = 0;
  String opr= "";
  String denklem = "";
  var buttonColor = 0xFFFABA0A;

  void buttonClicked(String btnValue){
    print(btnValue);
    if(btnValue == "AC"){
      gelenText = "";
      sonuc = 0;
      denklem = "";
      sayi.clear();
    }else if(btnValue == "+"){
      sayi.add(int.parse(gelenText));
      sonuc = 0;
      opr = btnValue;
    }else if(btnValue == "="){
      sayi.add(int.parse(gelenText));
      for(var i = 0;i < sayi.length;i++) {
        print("sayı : ${sayi[i]}");
        sonuc = sonuc +  sayi[i];
        //denklem = gelenText;
      }
      if(opr == "+"){
        gelenText = sonuc.toString();
        sayi.clear();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFF0EAB8C),title: const Text("Hesap Makinesi",textAlign: TextAlign.center,)),
      backgroundColor: Color(0xFFC3DAD4),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child:
              Container(width:300,height: 25,
                  color: Color(0xFF0EAB8C),
                  child: Align(alignment: Alignment.bottomRight,child: Text("$denklem",style: TextStyle(color: Colors.red,fontSize: 24)))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16,bottom: 16),
              child:
              Container(width: 300,height: 200,
                  color: Color(0xFF0EAB8C),
                  child: Align(alignment: Alignment.bottomRight,child: Text("$gelenText",style: TextStyle(color: Color(0xFFC3DAD4),fontSize: 40),textAlign: TextAlign.end)),),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    buttonClicked("AC");
                    gelenText = "";
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Color(0xFFFABA0A)),
                    child: const Text("AC")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    buttonClicked("+");
                    gelenText = "";
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Color(0xFF646A3C)),
                    child: const Text("+")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    buttonClicked("=");

                  });
                },
                    style: ElevatedButton.styleFrom(primary: Color(0xFF646A3C)),
                    child: const Text("=")),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    gelenText = "${gelenText}7";
                  });
                  buttonClicked("7");
                },
                    style: ElevatedButton.styleFrom(primary: Color(0xFF0EAB8C)),
                    child: const Text("7")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    gelenText = "${gelenText}8";
                  });
                  buttonClicked("8");
                },
                    style: ElevatedButton.styleFrom(primary: Color(0xFF0EAB8C)),
                    child: const Text("8")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    gelenText = "${gelenText}9";
                  });
                  buttonClicked("9");
                },
                    style: ElevatedButton.styleFrom(primary: Color(0xFF0EAB8C)),
                    child: const Text("9")),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    gelenText = "${gelenText}4";
                  });
                  buttonClicked("4");
                },
                    style: ElevatedButton.styleFrom(primary: Color(0xFF0EAB8C)),
                    child: const Text("4")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    gelenText = "${gelenText}5";
                  });
                  buttonClicked("5");
                },
                    style: ElevatedButton.styleFrom(primary: Color(0xFF0EAB8C)),
                    child: const Text("5")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    gelenText = "${gelenText}6";
                  });
                  buttonClicked("6");
                },
                    style: ElevatedButton.styleFrom(primary: Color(0xFF0EAB8C)),
                    child: const Text("6")),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    gelenText = "${gelenText}1";
                  });
                  buttonClicked("1");
                },
                    style: ElevatedButton.styleFrom(primary: Color(0xFF0EAB8C)),
                    child: const Text("1")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    gelenText = "${gelenText}2";
                  });
                  buttonClicked("2");
                },
                    style: ElevatedButton.styleFrom(primary: Color(0xFF0EAB8C)),
                    child: const Text("2")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    gelenText = "${gelenText}3";
                  });
                  buttonClicked("3");
                },
                    style: ElevatedButton.styleFrom(primary: Color(0xFF0EAB8C)),
                    child: const Text("3")),
              ],
            ),
            SizedBox(width: 300,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  gelenText = "${gelenText}0";
                });
                buttonClicked("0");
              },
                  style: ElevatedButton.styleFrom(primary: Color(0xFF0EAB8C)),
                  child: const Text("0")),
            ),
          ],
        ),
      ),
    );
  }
}
