import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String male = "Male";

  String femele = "Femele";

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Column(
          children: [
            const Text(
              'Welcome !',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
            const Text(
              'Please fill the correct information',
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(
              height: 40,
            ),

            //first name texfield
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 150,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        hintText: 'name',
                        label: Text('First name')),
                  ),
                ),
                //lasr name textfield,
                SizedBox(
                  width: 150,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        hintText: 'lastname',
                        label: Text('last name')),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 12,
            ),
            //sex chek box
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Gender'),
                  SizedBox(
                      child: DropdownButton<String>(
                    value: male,
                    items: const [
                      DropdownMenuItem<String>(
                        value: 'Male',
                        child: Text('Male'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Femele',
                        child: Text('Femele'),
                      ),
                    ],
                    onChanged: (String? value) {
                      setState(() {
                        male = value!;
                      });
                    },
                  )),
                ],
              ),
            ),
            //age int
            //first name texfield
            const TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: 'email',
                  label: Text('email')),
            ),
            //lasr name textfield,
            const TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: 'password',
                  label: Text('password')),
            ),
            //email textfield
            //password textfield
            const TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: 'password',
                  label: Text('confirm')),
            ),
          ],
        ),
      ),
    );
  }
}
