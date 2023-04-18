import 'package:flutter/material.dart';

class CheckoutButtonyes extends StatelessWidget {
  const CheckoutButtonyes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(8)),
            minimumSize: Size(120, 42),
            textStyle: Theme.of(context)
                .textTheme
                .labelLarge,
          ),
          child: const Text('Да'),
          onPressed: () {}
                );
  }
}
class CheckoutButtonNo extends StatelessWidget {
  const CheckoutButtonNo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom( primary: Color(0xffEBEDF0),
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(8)),
          minimumSize: Size(120, 42),
          textStyle: Theme.of(context)
              .textTheme
              .labelLarge,
        ),
        child: const Text('Отменить', style: TextStyle(color: Colors.black),),
        onPressed: () {}
    );   ;
  }
}

