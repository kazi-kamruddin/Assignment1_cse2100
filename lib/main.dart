import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductDetailsPage(),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: Text("Available Product"),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.network(
                    'chobi/milan.jpg',
                    height: 200,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(width: 105),
                Container(
                  decoration: BoxDecoration(
                    border: Border.(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    : Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                  child: Text(
                    'AC Milan Home Kit',
                    style: TextStyle(
                      fontSize: 23,
                    ),
                  ),
                ),
                SizedBox(width: 40),
                Icon(
                  Icons.attach_money, // Dollar icon
                  color: Colors.orange,
                  size: 32,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(7, 2, 7, 2),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.black,
                        width: 2,
                    ),
                  ),
                  child: Text(
                    '65',
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              child: Text(
                'According to Tech Jury, despite a number of cool apps and tips for successful time management, only 17% of people track their time. 50% of people have never thought about time waste, even though they are always late and running out of time. Time management is a skill. It helps people handle their daily duties without burnout and severe exhaustion. The N.I.L.C. includes time management on the list of top ten demanded soft skills that employees require in 2022. Why is it so important to manage one’s time correctly? Stephen Covey once said, “The key is not spending time, but in investing it”. It means that proper timing guarantees a person’s success in many life areas.',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,minimumSize: Size(60, 60),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BuyNowPage()),
                );
              },
              child: Text("click here"),
            ),
          ],
        ),
      ),
    );
  }
}

class BuyNowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      appBar: AppBar(
        title: Text("PAYMENT"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                Text(
                  'Choose payment method: ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: ClipOval(
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child: Ink.image(
                          image: NetworkImage('chobi/bKash.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: ClipOval(
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child: Ink.image(
                          image: NetworkImage('chobi/nagad.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: ClipOval(
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child: Ink.image(
                          image: NetworkImage('chobi/rocket.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: ClipOval(
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child: Ink.image(
                          image: NetworkImage('chobi/paypal.png'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text(
                  'BKASH',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  'NAGAD',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  'ROCKET',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  'PAYPAL',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(height: 55),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 13),
                Text(
                  'Specify your division: ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            DropdownButton<String>(
              items: ['Barishal', 'Chittagong', 'Dhaka', 'Khulna','Mymensingh', 'Rajshahi', 'Rangpur', 'Sylhet']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Do something with the selected value
              },
              hint: Text('Choose division'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,minimumSize: Size(60, 60),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentButton extends StatelessWidget {
  final String imagePath;

  const PaymentButton({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.network(
        imagePath,
        height: 80,
        width: 80,
      ),
    );
  }
}
