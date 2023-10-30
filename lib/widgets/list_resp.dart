import 'dart:convert';

class ListResp {
    List<Listado> listado;

    ListResp({
        required this.listado,
    });

    factory ListResp.fromRawJson(String str) => ListResp.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ListResp.fromJson(Map<String, dynamic> json) => ListResp(
        listado: List<Listado>.from(json["Listado"].map((x) => Listado.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "Listado": List<dynamic>.from(listado.map((x) => x.toJson())),
    };
}

class Listado {
    int productId;
    String productName;
    int productPrice;
    String productImage;
    String productState;

    Listado({
        required this.productId,
        required this.productName,
        required this.productPrice,
        required this.productImage,
        required this.productState,
    });

    factory Listado.fromRawJson(String str) => Listado.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Listado.fromJson(Map<String, dynamic> json) => Listado(
        productId: json["product_id"],
        productName: json["product_name"],
        productPrice: json["product_price"],
        productImage: json["product_image"],
        productState: json["product_state"],
    );

    Map<String, dynamic> toJson() => {
        "product_id": productId,
        "product_name": productName,
        "product_price": productPrice,
        "product_image": productImage,
        "product_state": productState,
    };
}
