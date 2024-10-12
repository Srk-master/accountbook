import 'package:flutter/material.dart';
import 'package:accountbook/Widgets/summary_card.dart';
import 'package:accountbook/Widgets/transaction_item.dart';

import 'Screen/LoginScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AccountBook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AuthCheck(),
    );
  }
}
class AuthCheck extends StatelessWidget {
  //로그인 체크
  @override
  Widget build(BuildContext context) {
    bool isLogIn = false; //로그인 세션 또는 토큰 확인 코드로 대체해야함

    if (isLogIn) {
      return HomeScreen();
    }
    else {
      return LoginScreen();
    }
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        children: [
          //요약 카드들
          Padding(
              padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SummaryCard(
                    title: '소득',
                    amount: '\$5000',
                    color: Colors.green,
                ),
                SummaryCard(
                  title: '지출',
                  amount: '\$200',
                  color: Colors.red,
                ),
                SummaryCard(
                  title: '예산',
                  amount: '\$3000',
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          //최근 거래 내역 리스트
          Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  TransactionItem(
                      title: '식비',
                      date: 'Oct 5, 2024',
                      amount: '-\$150'
                  ),
                  TransactionItem(
                      title: '월급',
                      date: 'Oct 1, 2024',
                      amount: '+\$3000'
                  ),
                  TransactionItem(
                      title: '전기세',
                      date: 'Sep 29, 2024',
                      amount: '-\$100'
                  ),
                ],
              ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                label: 'Statistics',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
            ),
          ]
      ),
    );
  }
}