class FoodsName {
  String images;
  var time;
  var evaluation;
  String location;
  String name;
  FoodsName({
   this.images,
  this.time,
  this.evaluation,
  this.location,
  this.name
  });
}
final List<FoodsName> objects = [
  FoodsName(
    images:'images/o1.jpg',
    time: 40,
    evaluation: 4.3,
    location: 'NewYork,11 Th Street',
    name: 'Pizza',
    ),
    FoodsName(
    images:'images/o2.jpg',
    evaluation: 5.0,
    time: 25,
    location: 'Boston,17 Th Street',
    name: 'Gamburger',
    ),
    FoodsName(
    images:'images/o3.jpg',
    evaluation: 3.9,
    time:39,
    location: 'California,12 Th Street',
    name: 'Lavash',
    ),
    FoodsName(
    images:'images/o.jpg',
    evaluation: 4.4,
    time: 48,
    location: 'Washington,27 Th Street',
    name: 'CheesBurger',
    ),

];