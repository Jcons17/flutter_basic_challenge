import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black, body: Cube());
  }
}

class Cube extends StatefulWidget {
  const Cube({Key? key}) : super(key: key);

  @override
  _CubeState createState() => _CubeState();
}

class _CubeState extends State<Cube> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotate;
  late Animation<double> _ball;
  late Animation<double> _shadowBall;
  late Animation<double> _shadowBallSpread;

  final pi = 3.1415;
  double sizeCube = 200.0;
  final degree = 3.1415 / 180;
  double sizebBall = 75;
  bool isAnimate = false;

  late double width;
  late double height;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    _rotate = TweenSequence<double>([
      TweenSequenceItem(
          tween: Tween<double>(begin: 0, end: 0)
              .chain(CurveTween(curve: Curves.bounceIn)),
          weight: 90),
      TweenSequenceItem(tween: Tween(begin: 0, end: 50), weight: 10),
      //TweenSequenceItem(tween: Tween(begin: 50, end: 0), weight: 10)
    ]).animate(_controller);
    _ball = TweenSequence<double>([
      TweenSequenceItem(
          tween: Tween(begin: -150.0, end: 0.0)
              .chain(CurveTween(curve: Curves.easeInQuad)),
          weight: 90),
      TweenSequenceItem(
          tween: Tween(begin: 0.0, end: 50.0)
              .chain(CurveTween(curve: Curves.linear)),
          weight: 10),
      //TweenSequenceItem(tween: Tween(begin: 50, end: 0), weight: 10)
    ]).animate(_controller);

    _shadowBallSpread = TweenSequence<double>([
      TweenSequenceItem(
          tween: Tween(begin: 50.0, end: 30.0)
              .chain(CurveTween(curve: Curves.easeInQuad)),
          weight: 90),
      TweenSequenceItem(
          tween: Tween(begin: 30.0, end: 30.0)
              .chain(CurveTween(curve: Curves.linear)),
          weight: 10),
      //TweenSequenceItem(tween: Tween(begin: 50, end: 0), weight: 10)
    ]).animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      }
      if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
        animation: _controller,
        child: Container(),
        builder: (context, child) {
          return GestureDetector(
            onTap: () {
              !isAnimate ? _controller.forward() : _controller.stop();
              isAnimate = !isAnimate;
            },
            child: Center(
                child: Stack(
              children: [
                back(),
                ball(),
                Positioned(
                  bottom: 50,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 100,
                    width: 300,
                    color: Colors.white,
                    child: Column(
                      children: const [
                        Expanded(
                          child: Text(
                            "Recreé esta animacion de otra que habia hecho anteriormente. El link para las demas animaciones que he hecho estan en mi perfil de GitHub y the Linkedin",
                            style: TextStyle(backgroundColor: Colors.white),
                          ),
                        ),
                        Text(
                          "Github: https://github.com/Jcons17 ",
                          style: TextStyle(backgroundColor: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Linkedin:https://www.linkedin.com/in/julio-cons-calderon-415602228/ ",
                          style: TextStyle(backgroundColor: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
          );
        });
  }

  linkTo(String url) async {
    const url = 'url';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget ball() {
    return Positioned(
        right: 0,
        left: 0,
        top: height / 2 - sizeCube / 2 - sizebBall + 10 + _ball.value,
        child: Container(
          width: sizebBall,
          height: sizebBall,
          decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
              gradient: RadialGradient(center: Alignment(-0.02, -0.8), colors: [
                Colors.white,
                Colors.grey.shade300,
                Colors.grey.shade500
              ])),
        ));
  }

  Align back() {
    return Align(
      alignment: Alignment.center,
      child: Transform(
        transform: Matrix4.rotationY(0),
        alignment: Alignment.topCenter,
        child: Container(
          height: sizeCube,
          width: sizeCube,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: sizeCube - _rotate.value,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.5),
                border: Border.all(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
