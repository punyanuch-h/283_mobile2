// ignore_for_file: public_member_api_docs, sort_constructors_first
// DATA FOR RECCOMENED on discovery
class RecommendedPlaceModel {
  final String image;
  final double rating;
  final String location;
  final String text;

  RecommendedPlaceModel({
    required this.image,
    required this.rating,
    required this.location,
    required this.text,
  });
}

List<RecommendedPlaceModel> recommendedPlaces = [
  RecommendedPlaceModel(
    image: "assets/images/reccomendation/bangKlong1.jpg",
    rating: 4.9,
    location: "Jeeb pao pub",
    text: "Salaya, Phutthamonthon, Nakhon Pathom 73170",
  ),
  RecommendedPlaceModel(
    image: "assets/images/reccomendation/bangKlong2.jpg",
    rating: 4.8,
    location: "Khlong Bang Luang",
    text: "Salaya, Phutthamonthon, Nakhon Pathom 73170",

  ),
  RecommendedPlaceModel(
    image: "assets/images/reccomendation/bangKlong3.png",
    rating: 4.7,
    location: "Jeeb pao pub",
    text: "Salaya, Phutthamonthon, Nakhon Pathom 73170",

  ),
  RecommendedPlaceModel(
    image: "assets/images/reccomendation/beach.jpg",
    rating: 4.4,
    location: "Khlong Bang Luang",
    text: "Salaya, Phutthamonthon, Nakhon Pathom 73170",

  ),
  RecommendedPlaceModel(
    image: "assets/images/reccomendation/beach1.jpg",
    rating: 4.4,
    location: "Jeeb pao pub",
    text: "Salaya, Phutthamonthon, Nakhon Pathom 73170",

  ),
];
