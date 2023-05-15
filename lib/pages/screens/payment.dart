import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:medical_sample/pages/widgets/payout_button_list.dart';
import 'package:medical_sample/utility/color_constant.dart';

import '../widgets/button_chips.dart';
import '../widgets/custom_container.dart';
import '../widgets/payment_option_bank_details.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorConstant.mainBlue,
      title: Text('Payments'),
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.details_rounded))
      ],),

body: SingleChildScrollView(
  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8,left:10,right: 5),
        child: Card(
          shadowColor: ColorConstant.mainBlack,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Transcation Limit",
                style: TextStyle(fontSize:18,fontWeight: FontWeight.w700),),
              Text("A free limit up to which you will receive  the online payments directly in your bank.",
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
          SizedBox(height: 3,),

          LinearProgressBar(
              maxSteps: 6,
              progressType: LinearProgressBar.progressTypeLinear,
              // Use Linear progress
              currentStep: 2,
              progressColor:ColorConstant.mainBlue,
              backgroundColor: ColorConstant.mainBlack1,
            ),
              Text("36,668 left out of 50,000",
                style: TextStyle(fontSize: 15,color:Colors.black12,),),
              Container(child: ElevatedButton(onPressed: (){},
                  child: Text("Increase Limit")),)
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left:10,right:10),
        child: payment_details(title: 'Default Method',
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),
          option: 'Online Payments',
            style1: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,
              color:Colors.black12,),
          icon: Icon(Icons.chevron_right),),
      ),
      Padding(
        padding: const EdgeInsets.only(left:10,right:10),
        child: payment_details(title: "Payment Profile",
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),
            option: "Bank Account",
          style1: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,
            color:Colors.black12,),
          icon: Icon(Icons.chevron_right),),
      ),

      Divider(height:8,color:ColorConstant.mainBlack1,thickness:0.5,),

      payment_details(title: "Payments Overview",
          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
          option: "Life Time",
          style1: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),
          icon: Icon(Icons.arrow_drop_down_sharp),),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          custom_containers(
                  title1: "AMOUNT ON HOLD",
                  title2: "₹0",
            color:ColorConstant.mainOrange,
                ),
          SizedBox(width: 10,),
          custom_containers(
              title1: "AMOUNT RECEIVED"
              , title2: "₹13,332",
              color:ColorConstant.mainGreen)
        ],
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Transactions",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Button_chips(
            height: MediaQuery.of(context).size.height*.05,
            width: MediaQuery.of(context).size.width*.25,
            text: "onhold",
            color: ColorConstant.mainBlack1,
          ),
          Button_chips(
            height: MediaQuery.of(context).size.height*.05,
            width: MediaQuery.of(context).size.width*.3,
            text: "Payouts(15)",
            color:ColorConstant.mainBlue,
          ),
          Button_chips(
            height: MediaQuery.of(context).size.height*.05,
            width: MediaQuery.of(context).size.width*.25,
            text: "Refunds",
            color: ColorConstant.mainBlack1,
          ),

        ],
      ),
      SizedBox(height:8,),
     Payouts(),
    ],
        ),
      ),
    );
  }
}





