import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:phrase2/screens/welcome.dart';
import 'package:phrase2/utilities/colors.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign user in method
  void signInUser() async {
    // Show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      // Sign in with email and password
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // If sign-in successful, navigate to welcome page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => welcomePage()), // แก้ welcomePage() เป็น WelcomePage()
      );
    } on FirebaseAuthException catch (e) {
      // Handle sign-in errors
      String errorMessage = 'An error occurred';
      if (e.code == 'user-not-found') {
        errorMessage = 'No user found for that email';
      } else if (e.code == 'wrong-password') {
        errorMessage = 'Wrong password provided for that user';
      }
      print(errorMessage); // Print error message for debugging

      // Show a snackbar with the error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
        ),
      );
    } finally {
      // Pop the loading circle
      Navigator.pop(context);
    }
  }

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
              Color.fromARGB(255, 220, 187, 125), // Color 1 (Top)
              Color.fromRGBO(204, 235, 240, 1), // Color 2 (Bottom)
            ],
          ),
        ),
        child: _buildPage(),
      ),
    );
  }

  Widget _buildPage() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 53, 53, 53),
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.waving_hand,
                  color: Colors.amber,
                  size: 40,
                )
              ],
            ),
            Text(
              "Good to see you back",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 62, 60, 60),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    signInUser(); // เรียกใช้ฟังก์ชัน signInUser() เมื่อกดปุ่ม Sign in
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      decoration: TextDecoration.underline, // เพิ่มเส้น
                      decorationColor: darkest_blue,
                      decorationThickness: 6,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all<double>(0),
                  ),
                ),
                SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () { },
                  child: Text(
                    "Sign Up", // Change button text to "Sign Up"
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all<double>(0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            _inputField("E-mail", emailController),
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
        SizedBox(height: 10), // Add space between TextField and Forgot Password
        if (isPassword)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  // Forgot Password Logic
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
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.08,
      color: darkest_blue,
      child: ElevatedButton(
        onPressed: () {
          // Check if email and password are not empty
          if (emailController.text.isNotEmpty &&
              passwordController.text.isNotEmpty) {
            signInUser(); // เรียกใช้ signInUser() สำหรับการล็อคอิน

            // Navigate ไปยังหน้า WelcomePage เมื่อล็อกอินเสร็จสิ้น
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => welcomePage()),
            );
          } else {
            // Show a snackbar if email or password is empty
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Please enter email and password.'),
              ),
            );
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(darkest_blue),
        ),
        child: Center(
          child: Text(
            "Sign in",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Text(
          'Sign Up Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
