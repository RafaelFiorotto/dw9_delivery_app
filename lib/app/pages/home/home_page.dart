import 'package:dw9_delivery_app/app/core/ui/widgets/delivery_appbar.dart';
import 'package:dw9_delivery_app/app/models/product_model.dart';
import 'package:dw9_delivery_app/app/pages/home/widgets/delivery_product_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppbar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return DeliveryProductTile(
                  product: ProductModel(
                    id: 0,
                    name: 'Lanche x',
                    image:
                        'https://conteudo.imguol.com.br/c/entretenimento/ee/2022/04/28/hamburguer-sanduiche-lanche-1651166602338_v2_900x506.jpg.webp',
                    description:
                        'Lanche top do caraio mto bom de carne com queijo',
                    price: 10.5,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
