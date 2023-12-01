import 'package:flutter/material.dart';
import 'package:facerecognition_flutter/helpers/String.dart';
import 'package:facerecognition_flutter/helpers/colors.Sys.dart';
import '../faceRecognition/signup.dart';


class BPage extends StatefulWidget {
  @override
  _BPageState createState() => _BPageState();
}

class _BPageState extends State<BPage> {
  late PageController _pageController;
  int currentIndex = 0;

  _signup() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FaceSignUp(),
      ),
    );
  }

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
      AppBar(elevation: 0, backgroundColor: Colors.white, actions: <Widget>[
        Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child:
            ElevatedButton(
              onPressed: () {
                _signup();
              },
              style: const ButtonStyle(
                //backgroundColor: Colors.black,
              ),
              child: const Text('Next'),
            ),
        ),


      ]),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          PageView(controller: _pageController, children: <Widget>[
            // PageView(
            //   onPageChanged: (int page) {
            //     setState(() {
            //       currentIndex = page;
            //     });
            //   },
            // ),
            makePage(
                image: "assets/college1.png",
                title: Strings.stepOneTitle,
                content: Strings.stepOneContent),
            makePage(
                reverse: true,
                image: "assets/college.avif",
                title: Strings.stepTwoTitle,
                content: Strings.stepTwoContent),
            makePage(
                image: "assets/college2.jpg",
                title: Strings.stepThreeTitle,
                content: Strings.stepThreeContent),
          ]),
          Container(
              margin: const EdgeInsets.only(bottom: 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildIndicator()))
        ],
      ),
    );
  }

  Widget makePage({image, title, content, reverse = false}) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50, bottom: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          !reverse
              ? Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset(image),
                ),
            const SizedBox(
                height: 30,
              ),
            ],
          )
              : const SizedBox(),
          Text(
            title,
            style: TextStyle(
                color: ColorSys.primary,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: ColorSys.gray,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
          reverse
              ? Column(
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(image),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          )
              : const SizedBox(),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 30 : 8,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: ColorSys.secoundary, borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}
