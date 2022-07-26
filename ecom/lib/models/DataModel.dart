import 'dart:convert';

// ignore_for_file: file_names

class Item {
  final String id;
  final String name;
  final String desc;
  final String image;
  final double price;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.image,
      required this.price});

  Item copyWith({
    String? id,
    String? name,
    String? desc,
    String? image,
    double? price,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      image: image ?? this.image,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'desc': desc});
    result.addAll({'image': image});
    result.addAll({'price': price});

    return result;
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      desc: map['desc'] ?? '',
      image: map['image'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(name: $name, desc: $desc, image: $image, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.name == name &&
        other.desc == desc &&
        other.image == image &&
        other.price == price;
  }

  @override
  int get hashCode {
    return name.hashCode ^ desc.hashCode ^ image.hashCode ^ price.hashCode;
  }
}

class DataModel {
  static List items = [
    Item(
        id: "3",
        name: "Galaxy A52 ",
        desc:
            "The Galaxy A52 has a 6.5-inch AMOLED display with a 90Hz of high refresh rate.",
        image:
            "https://mymobilesnews.com/wp-content/uploads/2022/02/Samsung-Galaxy-A52-1024x894.jpg",
        price: 240.0),
    Item(
        id: "4",
        name: "Galaxy A23 ",
        desc:
            "The Galaxy A23's Ambient Edge design connects the camera with the body seamlessly with simple but refined curves.",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBNHd7FwarbxA1xdMFt24KazjcR4dWPH_t_T5dz4YNK1s7rJAQ8gOIuR_NRw6eeiQgFhbZ9sAN&usqp=CAc",
        price: 450.0),
    Item(
        id: "5",
        name: "Galaxy M13 ",
        desc:
            "The Galaxy M13 Ambient Edge design connects the camera with the body seamlessly with simple but refined curves.",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc",
        price: 340.0),
    Item(
        id: "6",
        name: "Galaxy A70 ",
        desc:
            "Samsung Galaxy A70 is powered by the Qualcomm SDM675 Snapdragon 675 Octa-core",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd0JhwLvm_uLDLc-la7hK9WyVpe9naJFcebKfhcICiq2KtvXDePNAU_9QO06LPcQ0K0fLByc7m&usqp=CAc",
        price: 339),
    Item(
        id: "7",
        name: "Galaxy S20 E ",
        desc:
            "Samsung Galaxy S20 E is Powered by Qualcomm SM8250 Snapdragon 865 5G (7 nm+)",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNzUeRQ5uH7E3hpECib8qxdhfHv6SnUGT7mOsew_xiOoqRR7ZpdH-TQ4J6-HuIEfqHimYyPXWH&usqp=CAc",
        price: 1200),
    Item(
        id: "8",
        name: "Galaxy Z-Flip 4  ",
        desc:
            "Samsung Galaxy Z Flip 4 is pack with 12 MP (wide) + 12 MP (ultrawide) on the rear side while on the front there is a single camera, 10 MP (wide)",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT_PZcc0wicVYR992s5QCIDLYy8t-z-9kibTUdWZBN2sd86aaqdAJfhvxAwZNWV9wfdzDikpr1&usqp=CAc",
        price: 249)
  ];
}
