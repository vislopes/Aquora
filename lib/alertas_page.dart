import 'package:flutter/material.dart';

class AlertasPage extends StatelessWidget {
  const AlertasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F9FC),
      appBar: AppBar(
        backgroundColor: const Color(0xFF004B83),
        foregroundColor: Colors.white,
        title: const Text('Alertas & Recomendações'),
      ),
      body: Column(
        children: [
          // HEADER
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color(0xFF004B83),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fazenda Santa Rosa',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),

                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    _Badge(text: '4 novos', color: Colors.white),
                    _Badge(text: '2 Críticos', color: Colors.red),
                    _Badge(text: '2 Avisos', color: Colors.orange),
                    _Badge(text: '3 Recom.', color: Colors.green),
                    _Badge(text: '1 Info', color: Colors.blue),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          // FILTROS
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _FilterChip(label: 'Todos (8)', selected: true),
                  SizedBox(width: 10),
                  _FilterChip(label: 'Críticos', selected: false),
                  SizedBox(width: 10),
                  _FilterChip(label: 'Avisos', selected: false),
                  SizedBox(width: 10),
                  _FilterChip(label: 'Recom.', selected: false),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10),

          // LISTA
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _AlertCard(
                    icon: '🌡️',
                    title: 'Risco de Geada',
                    type: 'Crítico',
                    color: Colors.red,
                    location: 'Propriedade toda',
                    description:
                        'Temperatura mínima de 3°C prevista para quinta-feira.',
                    time: 'Hoje, 14:32',
                  ),

                  _AlertCard(
                    icon: '⛈️',
                    title: 'Tempestade com Granizo',
                    type: 'Crítico',
                    color: Colors.red,
                    location: 'Toda a região',
                    description:
                        'Alta probabilidade de granizo com até 30mm em 2h.',
                    time: 'Hoje, 09:15',
                  ),

                  _AlertCard(
                    icon: '💧',
                    title: 'Déficit Hídrico',
                    type: 'Aviso',
                    color: Colors.orange,
                    location: 'Zona Norte',
                    description:
                        'Umidade do solo abaixo de 30% (sensor S1).',
                    time: 'Hoje, 06:45',
                  ),

                  _AlertCard(
                    icon: '🌿',
                    title: 'NDVI Baixo',
                    type: 'Aviso',
                    color: Colors.orange,
                    location: 'Milho',
                    description:
                        'NDVI caiu para 0.45 abaixo do esperado.',
                    time: 'Ontem, 18:00',
                  ),

                  _AlertCard(
                    icon: '🚜',
                    title: 'Janela de Colheita',
                    type: 'Recomendação',
                    color: Colors.green,
                    location: 'Soja',
                    description:
                        'Condições ideais hoje e amanhã.',
                    time: 'Hoje, 07:00',
                  ),

                  _AlertCard(
                    icon: '🌱',
                    title: 'Adubação',
                    type: 'Recomendação',
                    color: Colors.green,
                    location: 'Milho',
                    description:
                        'Período ideal nos próximos 3-5 dias.',
                    time: 'Ontem, 12:00',
                  ),

                  _AlertCard(
                    icon: '💊',
                    title: 'Controle de Ferrugem',
                    type: 'Recomendação',
                    color: Colors.green,
                    location: 'Soja',
                    description:
                        'Risco alto de ferrugem asiática.',
                    time: 'Ontem, 08:30',
                  ),

                  _AlertCard(
                    icon: '📡',
                    title: 'Sensor S2 Offline',
                    type: 'Info',
                    color: Colors.blue,
                    location: 'Milho',
                    description:
                        'Sem comunicação há 45 minutos.',
                    time: 'Hoje, 00:15',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  final String text;
  final Color color;

  const _Badge({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(color: color),
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool selected;

  const _FilterChip({required this.label, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF004B83) : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF004B83)),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: selected ? Colors.white : const Color(0xFF004B83),
        ),
      ),
    );
  }
}

class _AlertCard extends StatelessWidget {
  final String icon;
  final String title;
  final String type;
  final Color color;
  final String location;
  final String description;
  final String time;

  const _AlertCard({
    required this.icon,
    required this.title,
    required this.type,
    required this.color,
    required this.location,
    required this.description,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(icon, style: const TextStyle(fontSize: 22)),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  type,
                  style: TextStyle(color: color, fontSize: 12),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            location,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 6),
          Text(description),
          const SizedBox(height: 8),
          Text(
            '$time · Ver detalhes ↓',
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}