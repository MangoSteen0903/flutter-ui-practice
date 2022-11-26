import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String type;
  final String amount;
  final String currency;
  final IconData currencyIcon;
  final bool isInverted;
  final int order;

  const CurrencyCard({
    super.key,
    required this.type,
    required this.amount,
    required this.currency,
    required this.currencyIcon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -order * 40),
      child: Container(
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
            color: isInverted ? Colors.white : const Color(0xFF1F2123),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: TextStyle(
                    color: isInverted ? const Color(0xFF1F2123) : Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color:
                            isInverted ? const Color(0xFF1F2123) : Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      currency,
                      style: TextStyle(
                        color: isInverted
                            ? const Color.fromRGBO(31, 33, 35, 0.6)
                            : Colors.white.withOpacity(0.6),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 1.5,
              child: Transform.translate(
                offset: const Offset(20, 20),
                child: Icon(
                  currencyIcon,
                  size: 128,
                  color: isInverted ? const Color(0xFF1F2123) : Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
