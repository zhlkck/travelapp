class PlaceInfo {
  final String location, image, name, desc;
  final int distance, days;

  PlaceInfo({
    required this.desc,
    required this.name,
    required this.image,
    required this.location,
    required this.distance,
    required this.days,
  });
}

List places = [
  PlaceInfo(
    image: 'assets/images/Kyoto-Japan.jpeg',
    location: 'Japan',
    name: 'Kyoto',
    distance: 50000, 
    days: 12,
    desc: 'Kyoto is a city in Japan',
  ),
  PlaceInfo(
    image: 'assets/images/Cinque-Terre-Italy.jpeg',
    location: 'Italy',
    name: 'Cinque Terre',
    distance: 10000,
    days: 10,
    desc: 'Cinque Terre is a city in Italy',
  ),
  PlaceInfo(
    image: 'assets/images/Galapagos-Islands.jpeg',
    location: 'Ireland',
    name: 'Galapagos Islands',
    distance: 20000, 
    days: 22,
    desc: 'Galapagos Islands is a city in Ireland',
  ),
];
