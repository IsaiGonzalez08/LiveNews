import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/view_models/init_screen_vm.dart';
import 'package:stacked/stacked.dart';

class InitScreen extends StatefulWidget {
  const InitScreen({super.key});

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<InitScreenVM>.reactive(
        onViewModelReady: (viewModel) => viewModel.init(),
        viewModelBuilder: () =>
            InitScreenVM(context: context, navigateToLogin: _navigateToLogin),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: SafeArea(
                child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/init_screen_background.png'),
                      fit: BoxFit.contain,
                      alignment: Alignment(0, -1))),
              child: _body(viewModel),
            )),
          );
        });
  }

  _body(InitScreenVM initScreenVM) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Column(
            children: [
              const SizedBox(
                height: 160,
              ),
              Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                    color: Color(0xFFF9F9F9),
                    borderRadius: BorderRadius.all(Radius.circular(60))),
                child: Center(
                    child: Image.asset('assets/images/live_news_logo.png')),
              ),
              const SizedBox(
                height: 27,
              ),
              RichText(
                  text: const TextSpan(
                      text: '',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'Live',
                        style: TextStyle(color: Color(0xFF000000))),
                    TextSpan(
                        text: 'News',
                        style: TextStyle(color: Color(0xFFD9D9D9)))
                  ])),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'A platform to show you the latest news',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000)),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Discover the Lastest News with our \n Seamless Onboarding Experiencie',
                style: TextStyle(fontSize: 12, color: Color(0xFF797979)),
              ),
              const SizedBox(
                height: 41,
              ),
              InkWell(
                onTap: () {
                  _navigateToLogin(initScreenVM);
                },
                child: Container(
                  width: 240,
                  height: 45,
                  decoration: const BoxDecoration(
                      color: Color(0xFF000000),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(),
                        const Text(
                          'Get Started for Free',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF)),
                        ),
                        Image.asset(
                          'assets/images/Forward.png',
                          width: 15,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const Text(
            '©2024 Live news app. All Rights Reserved',
            style: TextStyle(fontSize: 10, color: Color(0xFF797979)),
          )
        ],
      ),
    );
  }

  _navigateToLogin(InitScreenVM initScreenVM) async {}
}
