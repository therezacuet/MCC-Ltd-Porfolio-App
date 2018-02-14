class Portfolio {
  final String id;
  final String name;
  final String location;
  final String apptype;
  final String types;
  final String description;
  final String image;
  final String playstore;

  const Portfolio({this.id, this.name, this.location, this.apptype, this.types,
    this.description, this.image, this.playstore});
}

List<Portfolio> planets = [
  const Portfolio(
    id: "1",
    name: "Meena Game",
    location: "Android Application",
    apptype: "Available on Playstore",
    types: "Available on Playstore",
    description: "Meena is a cartoon character from South Asia. "
        "She is a spirited, nine-year-old girl, who braves all the odds – "
        "whether in her efforts to go to school or in fighting the discrimination against children."
        "The Meena figure has achieved remarkable popularity as she "
        "tackles the key issues affecting children. The stories revolve"
        " around the adventures of Meena, her brother Raju, her pet parrot"
        " Mithu, and members of her family and community. Bangladesh was the "
        "first country to launch Meena when a film about her struggle to "
        "go to school, called Count Your Chickens, was broadcast on national "
        "television in 1993. Since then, Meena has starred in 26 films for "
        "television, as well as radio programmes, comics and books. Every year, "
        "UNICEF releases new Meena stories that are read and watched by children "
        "and adults alike in India, Bangladesh, Pakistan, Sri Lanka, Nepal and Bhutan. "
        "Meena episodes have been dubbed into local languages and shown on TV in Laos, Cambodia and Vietnam as well."
        "UNICEF continues to speak with children to find out what "
        "stories people want to hear and this game is another step to reach their expectation."
        "The game was produced by UNICEF and developed by MCC LTD.",
    image: "assets/images/mina.png",
    playstore:"https://play.google.com/store/apps/details?id=org.unicef.meenagame&hl=en"
  ),
  const Portfolio(
    id: "2",
    name: "999 Emergency Service",
    location: "Android Application",
    apptype: "54.6m Km",
    types: "Available on Playstore",
    description: "Using this mobile app, you can call directly to 999 to call centers "
        "for emergency services, use live chat, and various other search options to "
        "find out any kind of information. Moreover, you can find out any information "
        "about emergency services and locations which may be beneficial to you during an emergency. "
        "Other than that, this app will also help you to access simple government services and tips on "
        "health and lifestyle. MCC was in charge of developing the whole project including pilot phase "
        "testing and development of both the web and mobile app end."
        "Key Features:"
        "Connects directly with 999 Emergency Service call center, Live chat options,  "
        "Access to all government call centers, Location services, Emergency and non-emergency content"
        "Customized search options.",
    image: "assets/images/emergency.png",
    playstore:"https://play.google.com/store/apps/details?id=com.mcc.nhd&hl=en"
  ),
  const Portfolio(
    id: "3",
    name: "Shishu Profile – UNICEF",
    location: "Android Application",
    apptype: "54.6m Km",
    types: "Available on Playstore",
    description: "The booklets on ‘Profile of Children in Bangladesh’ has been composed by "
        "UNICEF Bangladesh office based on credible national level surveys in "
        "order to project a depiction of the circumstances of the children in "
        "various geographic regions of the nation. The profile booklets, which "
        "are differentiated by national and divisional level, were printed in "
        "March 2015 and May 2015 respectively. The reason behind the creation of such handy and portable booklet is "
        "to provide at a glance information on the circumstances of women and children inBangladesh. ",
    image: "assets/images/shishu.png",
      playstore:""
  ),
  const Portfolio(
    id: "4",
    name: "Look @ Me Magazine",
    location: "Android Application",
    apptype: "54.6m Km",
    types: "Available on Playstore",
    description: "Look @ Me is a fashion and lifestyle oriented Bangladeshi monthly magazine. "
        "The print version of this popular magazine publishes in every month. The magazine started "
        "its journey in February 2012 with the theme of fashion and lifestyle. Our team has designed an app with smooth "
        "functionality and sleek looks which enable readers to surf through the virtual magazines at ease.",
    image: "assets/images/look.png",
      playstore:"https://play.google.com/store/apps/details?id=com.mcc.lookatme&hl=en"
  ),
  const Portfolio(
    id: "5",
    name: "Independent TV",
    location: "Android Application",
    apptype: "54.6m Km",
    types: "Available on Playstore",
    description: "Independent TV is a 24/7 news channel providing a series of show with "
        "the combination of news and entertainment. The app similarly broadcasts news, "
        "features on eminent celebrities, environment, music, wildlife, natural history "
        "and live telecasts of various events. This app makes available for the users live update "
        "of latest happenings across the country along with the latest inside stories instantly.",
    image: "assets/images/independent.png",
      playstore:""
  ),
  const Portfolio(
    id: "6",
    name: "Prothom Alo",
    location: "Android Application",
    apptype: "54.6m Km",
    types: "Available on Playstore",
    description: "Prothom Alo is the largest Bangla newspaper in Bangladesh. "
        "Through Prothom Alo app you get accurate news which allows you to "
        "replicate on-the-go the experience of their online version. It covers local "
        "Bangla news and photos from all 64 districts of Bangladesh covering various segments such "
        "as Politics, Business, Sports, Entertainment and Lifestyle. One can share Bangla news, "
        "articles and photos through email as well as any social media. Users are given an open platform "
        "using which they can post comments and opinions across all news and articles.",
    image: "assets/images/prothomalo.png",
      playstore:"https://play.google.com/store/apps/details?id=com.mcc.prothomalo"
  ),
  const Portfolio(
    id: "7",
    name: "Digital World",
    location: "Android Application",
    apptype: "54.6m Km",
    types: "Available on Playstore",
    description: "Digital World 2015 was the biggest technology exposition and conference held in Dhaka, Bangladesh. "
        "This app allows you to discover more and get the latest insights of the Digital World. "
        "Using this app, user can register them to the exposition and receive a QR code against successful registration. "
        "One can read through the session details; Exhibitor Profile, brief biography on Speaker."
        " Map Stall Location showing floor plans to easily move around has been provided. "
        "The app users can watch the live video streaming of the sessions being held at real-time. ",
    image: "assets/images/digital.png",
      playstore:""
  ),
  const Portfolio(
    id: "8",
    name: "Birds",
    location: "Android Application",
    apptype: "54.6m Km",
    types: "Available on Playstore",
    description: "Bangladesh is home to an impressive number of "
        "species of birds that vary from residents, that stay all year around, "
        "to breeding birds, that spend a good part of the growing season in "
        "Bangladesh to raise their young, migrants who pass through Bangladesh "
        "with the seasons, to wintering birds who like to spend a good part of "
        "the winter in Bangladesh to escape colder conditions up north. Birds, "
        "is a simple app designed to learn the names and pronunciation of various "
        "bird names in both English and Bangla. It has colorful illustration of birds "
        "to give a lifelike feel. Audio clips for learning the accurate pronunciation of bird name is "
        "readily made available. With vibrant UI, it makes learning more easy all put together. ",
    image: "assets/images/bird.png",
    playstore:"https://play.google.com/store/apps/details?id=com.mcc.birds"
  ),
  const Portfolio(
    id: "9",
    name: "Let’s Eat- Your Restaurant Guide",
    location: "Android Application",
    apptype: "54.6m Km",
    types: "Available on Playstore",
    description: "Let’s Eat is the best restaurant guide to search for your favorite cuisine and discover "
        "great places to eat in Dhaka. With the use of vibrant graphics, Let’s Eat maintains quality "
        "throughout. Swipe the app to view scanned menus, restaurant pictures, ratings and reviews, "
        "contacts, feedback, home delivery, payment methods and other amenities before you dine-out."
        " Map integration gives you the direction to a nearby and popular "
        "restaurant based on GPS location. Avail the best deals and coupons from the ‘Deal’ section. ",
    image: "assets/images/eat.png",
    playstore:"https://play.google.com/store/apps/details?id=com.mcc.letseat"
  ),
];