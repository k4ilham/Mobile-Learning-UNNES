import '../core.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            flex: 3,
            child: ImageSection(),
          ),
          Expanded(
            flex: 2,
            child: MainContainer(),
          ),
        ],
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        imageSplash,
        fit: BoxFit.contain,
      ),
    );
  }
}

class MainContainer extends StatelessWidget {
  const MainContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(children: [
      Center(
        child: MyText(
          titleText: 'Discover your next skill\nLearn anything you want!',
          titleStyle: TextStyle(
            color: blackColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(height: 5),
      Center(
        child: MyText(
          titleText: 'Discover your next skill\nLearn anything you want!',
          titleStyle: TextStyle(
            color: Colors.black54,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      const SizedBox(height: 20),
      Center(
        child: MyButton(
          buttonText: 'Get Started',
          buttonColor: primaryColor,
          textColor: whiteColor,
          onPressed: () {
            Get.off(const Home());
          },
        ),
      ),
    ]);
  }
}