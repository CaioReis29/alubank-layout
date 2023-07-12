import 'package:alubank/components/box_card.dart';
import 'package:flutter/material.dart';

class AccoountActions extends StatelessWidget {
  const AccoountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Ações da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){},
                child: const BoxCard(
                  boxContent: _AccoountActionsContent(
                    icon: Icon(Icons.account_balance_wallet),
                    text: 'Depositar',
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: const BoxCard(
                  boxContent: _AccoountActionsContent(
                    icon: Icon(Icons.cached),
                    text: 'Transferir',
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: const BoxCard(
                  boxContent: _AccoountActionsContent(
                    icon: Icon(Icons.center_focus_strong),
                    text: 'Ler',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AccoountActionsContent extends StatelessWidget {
  final Icon icon;
  final String text;

  const _AccoountActionsContent({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: icon,
          ),
          Text(text),
        ],
      ),
    );
  }
}
