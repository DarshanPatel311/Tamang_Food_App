class Welcome {
  final List<Restaurant> restaurants;

  Welcome({
    required this.restaurants,
  });

  factory Welcome.fromMap(Map<String, dynamic> map) {
    return Welcome(
      restaurants: List<Restaurant>.from(
        map['restaurants']?.map((x) => Restaurant.fromMap(x)) ?? [],
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'restaurants': restaurants.map((x) => x.toMap()).toList(),
    };
  }
}

class Restaurant {
  final int id;
  final String name;
  final String cuisine;
  final double rating;
  final Location location;
  final List<Menu> menu;

  Restaurant({
    required this.id,
    required this.name,
    required this.cuisine,
    required this.rating,
    required this.location,
    required this.menu,
  });

  factory Restaurant.fromMap(Map<String, dynamic> map) {
    return Restaurant(
      id: map['id'],
      name: map['name'],
      cuisine: map['cuisine'],
      rating: map['rating'],
      location: Location.fromMap(map['location']),
      menu: List<Menu>.from(map['menu']?.map((x) => Menu.fromMap(x)) ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'cuisine': cuisine,
      'rating': rating,
      'location': location.toMap(),
      'menu': menu.map((x) => x.toMap()).toList(),
    };
  }
}

class Location {
  final String address;
  final double latitude;
  final double longitude;

  Location({
    required this.address,
    required this.latitude,
    required this.longitude,
  });

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      address: map['address'],
      latitude: map['latitude'],
      longitude: map['longitude'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'address': address,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}

class Menu {
  final int itemId;
  final String name;
  final String description;
  final int price;
  final String category;
  final bool isVeg;
  final String imageUrl;

  Menu({
    required this.itemId,
    required this.name,
    required this.description,
    required this.price,
    required this.category,
    required this.isVeg,
    required this.imageUrl,
  });

  factory Menu.fromMap(Map<String, dynamic> map) {
    return Menu(
      itemId: map['itemId'],
      name: map['name'],
      description: map['description'],
      price: map['price'],
      category: map['category'],
      isVeg: map['isVeg'],
      imageUrl: map['imageUrl'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'itemId': itemId,
      'name': name,
      'description': description,
      'price': price,
      'category': category,
      'isVeg': isVeg,
      'imageUrl': imageUrl,
    };
  }
}
