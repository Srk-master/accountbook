import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //이메일 입력 필드
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0,),

            //비밀번호 입력 필드
            TextField(
              controller: passwordController,
              obscureText: true, //비밀번호 가리는 역할
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0,),

            //로그인 버튼
            ElevatedButton(
                onPressed: () {
                  //로그인 로직 처리하는 부분
                  print('Email: ${emailController.text}');
                  print('Password: ${passwordController.text}');
                },
                child: Text('Login'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), //버튼 넓이 최대로
              ),
            ),
            SizedBox(height: 8.0,),

            //회원가입 링크
            TextButton(
                onPressed: () {
                  //회원가입 화면으로 이동
                  //Navigator.push(
                  //    context,
                  //    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  //);
                },
                child: Text('계정이 없으십니까? 가입하세요.'),
            ),
            SizedBox(height: 16.0,),

            //소셜 로그인 구분선
            Divider(),
            
            //소셜 로그인 버튼 (구글, 페이스북)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //구글 로그인 버튼
                IconButton(
                    onPressed: () {
                      print('Google Button Pressed');
                    },
                    icon: Image.asset('assets/img_google.png',
                      height: 40.0,
                      width: 40.0,),
                ),
                SizedBox(width: 16.0,),

                //Facebook 로그인 버튼
                IconButton(
                    onPressed: () {
                      print('Facebook Login Pressed');
                    },
                    icon: Image.asset('assets/img_facebook.png',
                    height: 40.0,
                    width: 40.0,),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}