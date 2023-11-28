import 'package:flutter/material.dart';

import 'package:onboard/components/signin_form.dart';
import 'package:onboard/components/signup_form.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  late PageController _pageController;
  double _progress = 0;
  @override
  void initState() {
    _pageController = PageController()
      ..addListener(() {
        setState(() {
          _progress = _pageController.page ?? 0;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        padding: const EdgeInsets.only(top: 20, left: 6, right: 0),
        height: 450 + _progress * 140,
        child: Stack(
          fit: StackFit.expand,
          children: [
            PageView(
              controller: _pageController,
              children: const [SignInForm(), SignUpForm()],
            ),
            Positioned(
              height: 56,
              bottom: 20 + _progress * 50,
              right: 16,
              child: GestureDetector(
                onHorizontalDragUpdate: (details) => _pageController.nextPage(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.ease),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight,
                          stops: [
                            0.4,
                            0.8
                          ],
                          colors: [
                            Color.fromARGB(225, 239, 104, 88),
                            Color.fromARGB(225, 139, 33, 146)
                          ])),
                  child: DefaultTextStyle(
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: _progress,
                          child: const Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          child: Stack(children: [
                            Opacity(
                              opacity: 1 - _progress,
                              child: const Text("Register"),
                            ),
                            Opacity(
                              opacity: _progress,
                              child: const Text(
                                "Greate Account",
                                maxLines: 1,
                                overflow: TextOverflow.fade,
                                softWrap: true,
                              ),
                            ),
                          ]),
                        ),
                        Opacity(
                          opacity: 1 - _progress,
                          child: const Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
