class CatalogModel{
  static final items = [Item(
    id: 1,
    name: "Iphone 12 pro",
    desc: "IPhone 12th generation",
    price: 999,
    color: "#33505a",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZYPf9fwXWMLC17_xKRaH66rj-z0umOq_MUQ&usqp=CAU"
  )];

}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, 
  required this.name, 
  required this.desc, 
  required this.price, 
  required this.color, 
  required this.image});

  
}
