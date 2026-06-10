import 'package:flutter/material.dart';
import 'widgets.dart';

class DadosFazendaPage extends StatelessWidget {
  const DadosFazendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F9FC),
      appBar: AppBar(
        backgroundColor: const Color(0xFF004B83),
        foregroundColor: Colors.white,
        title: const Text('Dados da Propriedade'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Fazenda Santa Rosa · 45.2 ha',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),

                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      InfoChip(icon: '🌱', label: '3 culturas'),
                      InfoChip(icon: '📡', label: '3 sensores'),
                      InfoChip(icon: '📅', label: 'Plantio: Mar/2026'),
                      InfoChip(icon: '⚡', label: 'NDVI: 0.72'),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // TABS
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  TabButton(label: 'Índices', selected: true),
                  SizedBox(width: 10),
                  TabButton(label: 'Mapa', selected: false),
                  SizedBox(width: 10),
                  TabButton(label: 'Histórico', selected: false),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ÍNDICES
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Índices de Vegetação',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 10),

            _IndexCard(
              title: 'NDVI Soja',
              value: '0.72',
              status: 'Bom',
              color: Colors.green,
              progress: 0.72,
              limit: 0.6,
            ),

            _IndexCard(
              title: 'NDRE Soja',
              value: '0.51',
              status: 'Bom',
              color: Colors.green,
              progress: 0.51,
              limit: 0.4,
            ),

            _IndexCard(
              title: 'EVI Soja',
              value: '0.68',
              status: 'Bom',
              color: Colors.green,
              progress: 0.68,
              limit: 0.5,
            ),

            _IndexCard(
              title: 'NDVI Milho',
              value: '0.45',
              status: 'Atenção',
              color: Colors.orange,
              progress: 0.45,
              limit: 0.6,
            ),

            const SizedBox(height: 20),

            // SOLO
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Condições do Solo',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 10),

            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: const [
                SoilCard(icon: '💧', label: 'Umidade Norte', value: '38%'),
                SoilCard(icon: '💧', label: 'Umidade Sul', value: '58%'),
                SoilCard(icon: '🌡️', label: 'Temp. Solo', value: '22°C'),
                SoilCard(icon: '⚗️', label: 'pH', value: '6.8'),
                SoilCard(icon: '🌱', label: 'N-P-K', value: 'Médio'),
              ],
            ),

            const SizedBox(height: 20),

            // GRÁFICO FAKE
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Umidade do Solo — Hoje',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Center(
                child: Text(
                  '📊 Gráfico aqui (fl_chart depois)',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ----------------- INDEX CARD -----------------

class _IndexCard extends StatelessWidget {
  final String title;
  final String value;
  final String status;
  final Color color;
  final double progress;
  final double limit;

  const _IndexCard({
    required this.title,
    required this.value,
    required this.status,
    required this.color,
    required this.progress,
    required this.limit,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(status, style: TextStyle(color: color)),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: progress,
            color: color,
            backgroundColor: Colors.grey.shade200,
          ),
          const SizedBox(height: 6),
          Text('Limite: $limit'),
        ],
      ),
    );
  }
}