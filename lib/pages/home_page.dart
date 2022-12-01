import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/utils/my_button.dart';
import 'package:wallet_app_ui/utils/my_card.dart';
import 'package:wallet_app_ui/utils/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black54,
        child: const Icon(
          Icons.qr_code,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: (() {}),
                icon: const Icon(Icons.home, size: 32, color: Colors.black87),
              ),
              IconButton(
                onPressed: (() {}),
                icon:
                    const Icon(Icons.settings, size: 32, color: Colors.black87),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        "My",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " Wallet",
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  //plus button
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            //cards
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    accountType: "Saving Account",
                    balance: 15300.89,
                    cardNumber: 123427,
                    expiryMonth: 10,
                    expiryYear: 25,
                    color: Colors.green[300],
                  ),
                  MyCard(
                    accountType: "Business Account",
                    balance: 125300.89,
                    cardNumber: 3123427,
                    expiryMonth: 11,
                    expiryYear: 24,
                    color: Colors.deepPurple[300],
                  ),
                  MyCard(
                    accountType: "Fixed Deposit",
                    balance: 215300.89,
                    cardNumber: 4123427,
                    expiryMonth: 10,
                    expiryYear: 23,
                    color: Colors.blue[200],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),
            const SizedBox(height: 25),
            //buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MyButton(
                    iconImagePath: "lib/icons/send-money.png",
                    buttonText: "Send",
                  ),
                  MyButton(
                    iconImagePath: "lib/icons/credit-card.png",
                    buttonText: "Pay",
                  ),
                  MyButton(
                    iconImagePath: "lib/icons/bill.png",
                    buttonText: "Bills",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            //column
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: const [
                  MyListTile(
                    iconImagePath: "lib/icons/analysis.png",
                    tileTitle: "Statistics",
                    tileSubTitle: "Payments and Income",
                  ),
                  MyListTile(
                    iconImagePath: "lib/icons/money-transfer.png",
                    tileTitle: "Transactions",
                    tileSubTitle: "Transaction History",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
