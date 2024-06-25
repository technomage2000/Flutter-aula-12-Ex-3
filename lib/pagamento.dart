import 'package:flutter/material.dart';

class Pagamento extends StatefulWidget {
  const Pagamento({super.key});

  @override
  State<Pagamento> createState() => _PagamentoState();
}

class _PagamentoState extends State<Pagamento> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Método:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownMenu<int>(
            initialSelection: 1,
            onSelected: (int? valor) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Método trocado para $valor'),
                  action: SnackBarAction(
                    label: 'Action',
                    onPressed: () {
                      // Code to execute.
                    },
                  ),
                ),
              );
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry(label: 'Cartão de crédito', value: 1),
              DropdownMenuEntry(label: 'Pix', value: 2),
              DropdownMenuEntry(label: 'Dinheiro', value: 3),
            ])
      ],
    );
  }
}
