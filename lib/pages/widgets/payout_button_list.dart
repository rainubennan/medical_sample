import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Payouts(),));
}

class Payouts extends StatelessWidget {
  List productImage = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVeTGMP2KiXVw6kFbewYnG5kNXXAcMpuN15Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT85AvNoD8LTZjVTTCCf8tUZrN-aorH3ptYIw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5iV6jqbMu6MFvJio1pod6S1buVBe_8ydEJw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTO60byFZGMO1ZWDJ7nBMoci2tT2evd0ZRQA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0w6BUPyNQ3x4soFoYevTj915jgCQongGmyg&usqp=CAU",
  ];
  List orderId = [
    "Order #1688028",
    "Order #1547526",
    "Order #1593572",
    "Order #1234569",
    "Order #1789456",
  ];
  List dateTime = [
    "Jul 12 , 02:06PM",
    "May 25 , 08:45AM",
    "Apr 10 , 10:30PM",
    "Mar 08 , 11:00PM",
    "Feb 06 , 04:30PM"
  ];
  List amount = [
    "₹799", "₹499", "₹599", "₹1299", "₹999"];
  List transactionStatus = [
    "₹799 deposited to 14725836900020",
    "₹499 deposited to 12358496745675",
    "₹599 deposited to 54789632101254",
    "₹1299 deposited to 78932145602014",
    "₹999 deposited to 95162384701200",
  ];

  Payouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
// physics: const NeverScrollableScrollPhysics(),
        itemCount: orderId.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Image.network(
                    productImage[index],
                  ),
                  title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(orderId[index]),
                      Text(amount[index]),
                    ],
                  ),
                  subtitle: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(dateTime[index]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius:7,
                          ),
                          SizedBox(width: 4,),
                          Text("Successful")
                        ],
                      ),
                    ],
                  ),
                ),
                Text(transactionStatus[index],style:TextStyle(fontStyle: FontStyle.italic,color: Colors.black38),)
              ],
            ),
          );
        });
  }
}
