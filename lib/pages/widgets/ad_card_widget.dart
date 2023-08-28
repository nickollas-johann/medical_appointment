import 'package:flutter/material.dart';
import 'package:medical_appointment/pages/utils.dart/colors.dart';

class AdCardWidget extends StatelessWidget {
  final size;
  const AdCardWidget({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.2,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        color: lightBlue,
      ),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            child: Container(
              height: size.height * 0.2,
              width: 180,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Tenha os melhores serviços médicos!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                      'Melhor qualidade de serviços médicos com menor custo.'),
                ],
              ),
            ),
          ),
          Positioned(
            right: 20,
            child: Image.asset(
              'assets/kisspng-physician-uniform-scrubs-white-coat-medicine-foreign-doctor-material-5a68c8b33322b6.9350870415168165632095.png',
              height: size.height * 0.2,
            ),
          )
        ],
      ),
    );
  }
}
