import 'package:flutter/material.dart';

class Product {
  const Product({this.name});
  final String name;
}

typedef void CartChangeCallBack(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget{

  final Product product;
  final bool inCart;
  final CartChangeCallBack onCartCallback;

  ShoppingListItem({Product product,this.inCart,this.onCartCallback}):product = product;

  Color _getColor(BuildContext context){
    return inCart? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context){
    if(!inCart){
      return null;
    }
    print('ShoppingListItem $inCart');
    return TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      onTap: (){
        onCartCallback(product,inCart);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(product.name,style:_getTextStyle(context)),
    );
  }
}

class ShoppingList extends StatefulWidget{

  final List<Product> products;

  ShoppingList({this.products});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ShoppingListState();
  }

}
class _ShoppingListState extends State<ShoppingList>{

  Set<Product> _shopCart = new Set<Product>();

  void _handleCartChange(Product product, bool inCart){
    print('product${product.name},inCart $inCart');
    print('shopcart $_shopCart');
    setState(() {
      if(inCart){
        _shopCart.remove(product);
      }else{
        _shopCart.add(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('购物车')
      ),
      body: ListView(
        padding: EdgeInsets.symmetric( vertical: 8.0 ),
        children: widget.products.map((Product product){
          return new ShoppingListItem(
            product: product,
            inCart: _shopCart.contains(product),
            onCartCallback: _handleCartChange,
          );
        }).toList()
      )
    );
  }
  
}