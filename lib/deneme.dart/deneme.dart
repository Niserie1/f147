import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;

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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: demo_data.length,
                controller: _pageController,
                itemBuilder: (context, index) => OnboardContent(
                  image: demo_data[index].image,
                  title: demo_data[index].title,
                  description: demo_data[index].description,
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: 60,
              child: ElevatedButton(
                  onPressed: () {
                    _pageController.nextPage(
                        curve: Curves.ease,
                        duration: Duration(milliseconds: 300));
                  },
                  style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                  child: Image.asset("assets/next-button.png")),
            )
          ],
        ),
      ),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<Onboard> demo_data = [
  Onboard(
    image: "assets/animal-care.png",
    title: " Petcare'e Hoşgeldiniz",
    description: "Minik dostlarımız artık emin ellerde",
  ),
  Onboard(
    image: "assets/chat.png",
    title: "Mesajlaşma",
    description: "Bakıcılar ve diğer hayvan sahiplerine aklına takılanları sor",
  ),
  Onboard(
    image: "assets/doctor.png",
    title: "Acil Veteriner Destek Hattı",
    description:
        "Acil durumlarda 7/24 açık olan hattımıdan kendine en yakın sağlık kuruluşunu bul",
  ),
  Onboard(
    image: "assets/map.png",
    title: "Hayvan Haritaları",
    description: "Kendime en yakın veteriner,petshop vs bulabilirsin",
  )
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 400,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 16),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
