import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  bool cardSelected = false;
  bool walletSelected = true;
  bool bankSelected = false;
  TextStyle textStyle = TextStyle(fontSize: 22,color: Color(0XFF5e9ec8),fontWeight: FontWeight.bold);
  TextStyle normalStyle = TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold);
  TextStyle selectionStyle = TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Center(child: Text("Merchant Checkout",style: textStyle)),
          Row(
            children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 40,),
              SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 25,width: 150,
                decoration:BoxDecoration(
                  color: Color(0XFF00d8ff),
                  borderRadius: BorderRadius.circular(10)
                  ),
                  ),
                SizedBox(height: 5,),
                Container(height: 23,width: 100,
                decoration:BoxDecoration(
                 color:Color(0XFF5e9ec8),
                  borderRadius: BorderRadius.circular(10)
                  ),)
              ],
            )
          ],),
          SizedBox(height: 30,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total Amount",style: textStyle,),
            Text("\$18",style: textStyle,)
          ],),
          SizedBox(height: 30,),
          Card(elevation: 0,child: Text("Payment Methods",style: textStyle,)),
          Card(color: walletSelected?Colors.blue:Colors.white,
            child: ListTile(
              onTap: (){
                setState(() {
                  walletSelected = true;
                  bankSelected = false;
                  cardSelected = false;
                });
              },
              leading: Icon(Icons.wallet,color: walletSelected ? Colors.white:Colors.black,),
              title: Text("E-Wallet",style: walletSelected?selectionStyle:normalStyle,),
              trailing: Icon(Icons.arrow_forward_ios,size: 12,color: walletSelected ? Colors.white:Colors.black),)),
          Card(color: cardSelected?Colors.blue:Colors.white,
            child: ListTile(
              onTap: (){
                setState(() {
                  walletSelected = false;
                  bankSelected = false;
                  cardSelected = true;
                });
              },
              leading: Icon(Icons.wallet,color: cardSelected ? Colors.white:Colors.black,),
              title: Text("Credit Card",style: cardSelected?selectionStyle:normalStyle,),
              trailing: Icon(Icons.arrow_forward_ios,size: 12,color: cardSelected ? Colors.white:Colors.black),)),
          Card(color: bankSelected?Colors.blue:Colors.white,
            child: ListTile(
              onTap: (){
                setState(() {
                  walletSelected = false;
                  bankSelected = true;
                  cardSelected = false;
                });
              },
              leading: Icon(Icons.wallet,color: bankSelected ? Colors.white:Colors.black,),
              title: Text("Bank Account",style: bankSelected?selectionStyle:normalStyle,),
              trailing: Icon(Icons.arrow_forward_ios,size: 12,color: bankSelected ? Colors.white:Colors.black),)),
         ],
      ),
        )),
    );
  }
}