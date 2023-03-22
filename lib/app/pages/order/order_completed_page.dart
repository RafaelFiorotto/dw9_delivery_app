import 'package:dw9_delivery_app/app/core/ui/helpers/size_extensios.dart';
import 'package:dw9_delivery_app/app/core/ui/styles/text_styles.dart';
import 'package:dw9_delivery_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class OrderCompletedPage extends StatelessWidget {
  const OrderCompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo_rounded.png'),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Pedido realizado com sucesso, em breve você, receberá a confirmação do seu pedido!',
                  style:
                      context.textStyles.textExtraBold.copyWith(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                DeliveryButton(
                  width: context.percentWidth(.8),
                  label: 'Fechar',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
