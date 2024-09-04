class onboardingmodel{
  String? image;
  String? title;
  String? desctription;
  onboardingmodel({this.title, this.image, this.desctription });

}
List<onboardingmodel> contents = [
  onboardingmodel(
    title: 'Empowering Artisans,',
    desctription: 'Farmers & Micro Business',
    image: "assets/onboarding 1.png",
  ),
  onboardingmodel(
    title: 'Connecting NGOs,',
    desctription: 'Social Enterprises with Communities',
    image: "assets/onboarding 2.png",
  ),
  onboardingmodel(
    title: ' Donate, Invest & Support',
    desctription: 'infrastructure projects',
    image: "assets/onboarding 3.png",
  ),
];

