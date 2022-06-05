class Galaxy {

  final String img;
  final String bgImg;
  final String name;
  final String dis;
  final double speed;
  final double dollar;
  final double disSun;
  final double disEarth;
  final String description;

  Galaxy({
    required this.img,
    required this.bgImg,
    required this.name,
    required this.dis,
    required this.speed,
    required this.dollar,
    required this.disEarth,
    required this.disSun,
    required this.description,
});
}

List<Galaxy> galaxy = <Galaxy>[

  Galaxy(img: 'assets/images/mars.png', bgImg: 'assets/images/mars_bg.jpg',name: 'Mars', dis: '54.6m',dollar: 2.8, disSun: 66.818,disEarth: 226.14,speed: 3.711,description: "Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past. Mars is one of the most explored bodies in our solar system, and it's the only planet where we've sent rovers to roam the alien landscape."),
  Galaxy(img: 'assets/images/earth.png', bgImg: 'assets/images/earth_bg.jpg',name: 'Earth', dis: '45.6m',dollar: 3.2, disSun: 56.818,disEarth: 253.14,speed: 5.562,description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "),
  Galaxy(img: 'assets/images/mercury.png', bgImg: 'assets/images/mer_bg.jpg',name: 'Mercury', dis: '65.6m',dollar: 5.6, disSun: 89.818,disEarth: 225.14,speed: 6.856,description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "),
  Galaxy(img: 'assets/images/moon.png', bgImg: 'assets/images/moon_bg.jpg',name: 'Moon', dis: '25.6m',dollar: 5.5, disSun: 25.818,disEarth: 532.14,speed: 5.652,description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "),
  Galaxy(img: 'assets/images/neptune.png', bgImg: 'assets/images/nep_bg.jpg',name: 'Neptune', dis: '26.6m',dollar: 2.5, disSun: 20.818,disEarth: 304.14,speed: 9.521,description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "),

];