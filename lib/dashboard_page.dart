import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F9FC),
      appBar: AppBar(
        backgroundColor: const Color(0xFF004B83),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text('Aquora'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // CABEÇALHO
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
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      'JS',
                      style: TextStyle(
                        color: Color(0xFF004B83),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Bom dia, João! 👋',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Fazenda Santa Rosa',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Uberlândia, MG • 45.2 ha',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // MÉTRICAS
            SizedBox(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  MetricCard('24°C', 'Temperatura', Icons.thermostat),
                  MetricCard('68%', 'Umidade', Icons.water_drop),
                  MetricCard('42%', 'Solo', Icons.grass),
                  MetricCard('0.72', 'NDVI', Icons.show_chart),
                  MetricCard('12km/h', 'Vento', Icons.air),
                  MetricCard('2mm', 'Chuva', Icons.cloud),
                ],
              ),
            ),

            // MAPA
            _sectionTitle('Mapa da Propriedade'),

            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              height: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 40,
                    child: sensor('S1'),
                  ),
                  Positioned(
                    top: 120,
                    left: 70,
                    child: sensor('S2'),
                  ),
                  Positioned(
                    top: 70,
                    right: 50,
                    child: sensor('S3'),
                  ),
                  const Positioned(
                    bottom: 20,
                    left: 10,
                    child: Text(
                      '🌱 Soja • 28ha\n🌽 Milho • 12ha\n🐄 Pastagem • 5ha',
                    ),
                  ),
                ],
              ),
            ),

            // PREVISÃO
            _sectionTitle('Previsão do Tempo'),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Column(
                children: [
                  ForecastRow('Hoje', '☀️', '28°', '18°'),
                  Divider(),
                  ForecastRow('Dom', '⛅', '25°', '16°'),
                  Divider(),
                  ForecastRow('Seg', '🌧️', '22°', '15°'),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ALERTAS
            _sectionTitle('Alertas Recentes'),

            const AlertCard(
              icon: '🌡️',
              title: 'Risco de Geada',
              subtitle:
                  'Temperatura mínima de 3°C prevista para quinta-feira',
            ),

            const AlertCard(
              icon: '🌧️',
              title: 'Excesso de Chuva',
              subtitle:
                  'Precipitação acima do normal nos próximos 3 dias',
            ),

            const AlertCard(
              icon: '💧',
              title: 'Déficit Hídrico',
              subtitle:
                  'Umidade do solo abaixo de 30% na Zona Norte',
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  static Widget sensor(String nome) {
    return Column(
      children: [
        const Icon(
          Icons.sensors,
          color: Color(0xFF004B83),
          size: 30,
        ),
        Text(nome),
      ],
    );
  }

  Widget _sectionTitle(String texto) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          texto,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class MetricCard extends StatelessWidget {
  final String value;
  final String title;
  final IconData icon;

  const MetricCard(
    this.value,
    this.title,
    this.icon, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: const Color(0xFF004B83)),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(title),
        ],
      ),
    );
  }
}

class ForecastRow extends StatelessWidget {
  final String day;
  final String icon;
  final String max;
  final String min;

  const ForecastRow(
    this.day,
    this.icon,
    this.max,
    this.min, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(day),
        Text(icon),
        Text('$max / $min'),
      ],
    );
  }
}

class AlertCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;

  const AlertCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 6,
      ),
      child: ListTile(
        leading: Text(
          icon,
          style: const TextStyle(fontSize: 26),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}