import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/themes_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'Pontos da Conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const BoxCard(boxContent: _AccountPointsContent()),
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Pontos Totais:',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Text(
          '3000',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 5),
          child: Padding(
            padding: EdgeInsets.only(bottom: 6.0, top: 4),
            child: ContentDivision(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Objetivos: ',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: ColorDot(color: ThemeColors.recentActivity['objective1']),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Entrega grátis: 15000pts'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: ColorDot(color: ThemeColors.recentActivity['objective2']),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('1 mês de streaming: 30000pts'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
