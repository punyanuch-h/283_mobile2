import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 220, 187, 125), // สีแรก (ข้างบน)
              Color.fromRGBO(204, 235, 240, 1), // สีที่สอง (ข้างล่าง)
            ],
          ),
        ),
        child: _Page(),
      ),
    );
  }

  Widget _Page() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24, color: const Color.fromARGB(255, 53, 53, 53)),
            ),
            Text(
              "Good to see you back",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24, color: const Color.fromARGB(255, 62, 60, 60)),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Your Sign In Button Logic
                    print("Sign In button pressed");
                  },
                  child: Text("Sign In"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                    elevation: MaterialStateProperty.all<double>(0),
                  ),
                ),
                SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    // Your Sign Up Button Logic
                    print("Sign Up button pressed");
                  },
                  child: Text("Sign Up"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                    elevation: MaterialStateProperty.all<double>(0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            _inputField("E-mail", usernameController),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: _inputField("Password", passwordController,
                      isPassword: true),
                ),
              ],
            ),
            const SizedBox(height: 20),
            _loginBtn(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {bool isPassword = false}) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: Color.fromARGB(26, 236, 230, 230)),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          style: const TextStyle(color: Color.fromARGB(97, 120, 119, 119)),
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: isPassword ? Icon(Icons.lock) : Icon(Icons.mail),
            hintText: hintText,
            hintStyle:
                const TextStyle(color: Color.fromARGB(255, 131, 130, 130)),
            enabledBorder: border,
            focusedBorder: border,
            filled: true,
            fillColor: Color.fromARGB(255, 111, 202, 205),
          ),
          obscureText: isPassword,
        ),
        SizedBox(
            height: 10), // เพิ่มช่องว่างระหว่าง TextField กับ Forgot Password
        if (isPassword) // เพิ่มเงื่อนไขเพื่อแสดง "Forgot Password" เฉพาะเมื่อเป็นช่องใส่รหัสผ่าน
          Row(
            mainAxisAlignment: MainAxisAlignment.end, // จัดวางให้อยู่ทางขวา
            children: [
              GestureDetector(
                onTap: () {
                  // ใส่โค้ดสำหรับลืมรหัสผ่านตรงนี้
                  print("Forgot Password tapped");
                },
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Username: " + usernameController.text);
        debugPrint("Password: " + passwordController.text);
      },
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          "Sign in",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
        backgroundColor: MaterialStateProperty.all<Color>(
            Color.fromARGB(255, 111, 202, 205)),
        foregroundColor: MaterialStateProperty.all<Color>(
            Color.fromARGB(246, 255, 255, 255)),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(vertical: 16)),
      ),
    );
  }
}
