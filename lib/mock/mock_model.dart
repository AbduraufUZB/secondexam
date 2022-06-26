class MockModel {
    MockModel({
        this.name,
        this.price,
        this.txt,
        this.image,
    });

    String? name;
    String? price;
    String? txt;
    String? image;

    factory MockModel.fromJson(Map<String, dynamic> json) => MockModel(
        name: json["name"],
        price: json["price"],
        txt: json["txt"],
        image: json["image"],
    );
}
