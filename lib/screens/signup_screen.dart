import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/utils/colors.dart';
import 'package:instagram/widgets/text_field_input.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passWordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Container(),
              flex: 2,
            ),
            //svg image
            SvgPicture.asset(
              'assets/ic_instagram.svg',
              color: primaryColor,
              height: 64,
            ),
            const SizedBox(
              height: 64,
            ),
//circular widget to acccept and show selected file
            Stack(
              children: [
                const CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage(
                      'https://instagram.fcok6-1.fna.fbcdn.net/v/t51.2885-19/298007770_464077285583819_2545914279335928162_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fcok6-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=XpS41sykROYAX9hnXvl&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT_nDnRC4Mzow2uPs6KHUytIiZjzdq1JKWZ9FBFTrjy_Eg&oe=62FDB57B&_nc_sid=8fd12b'),
                ),
                Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_a_photo,
                        )))
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            //text field input for username
            TextFieldInput(
                textEditingController: _usernameController,
                hintText: 'Enter your Username',
                textInputType: TextInputType.text),
            const SizedBox(
              height: 24,
            ),
            //text field input for email
            TextFieldInput(
                textEditingController: _emailController,
                hintText: 'Enter your Email',
                textInputType: TextInputType.emailAddress),
            const SizedBox(
              height: 24,
            ),
            //text field input for password
            TextFieldInput(
              textEditingController: _passWordController,
              hintText: 'Enter your Password',
              isPass: true,
              textInputType: TextInputType.text,
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldInput(
                textEditingController: _bioController,
                hintText: 'Enter your bio',
                textInputType: TextInputType.text),
            const SizedBox(
              height: 24,
            ),
            //button login
            InkWell(
              child: Container(
                child: const Text('Sign Up'),
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    color: blueColor),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Flexible(
              child: Container(),
              flex: 2,
            ),
            //Transitioning to signingup
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Text("Don't have an account?"),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
