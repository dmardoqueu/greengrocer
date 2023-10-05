import 'package:flutter/material.dart';
import 'package:greengrocer/src/common_widgets/quantity_widget.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:greengrocer/src/models/item_model.dart';
import 'package:greengrocer/src/services/utils_services.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final UtilsServices utilsServices = UtilsServices();

  int cartItemQuantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      body: Stack(
        //CONTEUDO
        children: [
          Column(
            children: [
              Expanded(
                child: Hero(
                  tag: widget.item.img,
                  child: Image.asset(widget.item.img),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        //NOME E QUANTIDADE
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                widget.item.itemName,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27,
                                ),
                              ),
                            ),
                            QuantityWidget(
                              sufixText: widget.item.unit,
                              value: cartItemQuantity,
                              result: (quantity) {
                                setState(() {
                                  cartItemQuantity = quantity;
                                });
                              },
                            ),
                          ],
                        ),
                        //PREÇO
                        Text(
                          utilsServices.priceToCurrency(widget.item.price),
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.customSwatchColor,
                          ),
                        ),

                        //DESCRIÇÃO
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: SingleChildScrollView(
                              child: Text(
                                widget.item.description,
                                style: const TextStyle(
                                  height: 1.3,
                                ),
                              ),
                            ),
                          ),
                        ),

                        //BOTÃO
                        SizedBox(
                          height: 55,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            )),
                            onPressed: () {},
                            icon: const Icon(Icons.shopping_cart_outlined),
                            label: const Text(
                              "Adicionar ao carrinho",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            left: 10,
            top: 10,
            child: SafeArea(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
          )
        ],
      ),
    );
  }
}