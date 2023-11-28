import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: const BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        child: Column(
          children: [
            //greeting
            const Text(
              'Hello Again !',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const Text(
              'Welcome back, you\'ve been missed',
            ),
            const SizedBox(
              height: 40,
            ),
            //email texyfield
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 8),
                    hintText: ' email',
                    border: InputBorder.none,
                    suffix: Icon(Icons.check)),
              ),
            ),
            const SizedBox(
              height: 14,
            ),

            //password textfield
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 8),
                    hintText: 'password',
                    border: InputBorder.none,
                    suffix: Icon(Icons.remove_red_eye)),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.deepPurple,
                ),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                )),

            //signin button
            const Text(
              'Not a member?',
            ),
            //not a member? register
          ],
        ),
      ),
    );
  }

  Widget signInBtn(String asset) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(100),
      ),

      //<a target="_blank" href="https://icons8.com/icon/118568/facebook">Facebook</a> icon by <a target="_blank" href="https://icons8.com">Icons8</a>
      //<a target="_blank" href="https://icons8.com/icon/fJp7hepMryiw/twitterx">Twitter</a> icon by <a target="_blank" href="https://icons8.com">Icons8</a>
      //<a target="_blank" href="https://icons8.com/icon/13930/linkedin">LinkedIn</a> icon by <a target="_blank" href="https://icons8.com">Icons8</a>
      //<a target="_blank" href="https://icons8.com/icon/V5cGWnc9R4xj/google">Google</a> icon by <a target="_blank" href="https://icons8.com">Icons8</a>
      child: Image.asset(
        asset,
        width: 40,
      ),
    );
  }
}
