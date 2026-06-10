import 'package:flutter/material.dart';

class PrevisaoTempoPage extends StatelessWidget {
  const PrevisaoTempoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F9FC),
      appBar: AppBar(
        backgroundColor: const Color(0xFF004B83),
        foregroundColor: Colors.white,
        title: const Text('Previsão do Tempo'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                    'Fazenda Santa Rosa · Uberlândia, MG',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '28°  ☀️ Ensolarado',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Máx 28° · Mín 18° · Sexta, 5 Jun',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // STATS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  _WeatherStat(icon: '💧', value: '64%', label: 'Umidade'),
                  _WeatherStat(icon: '💨', value: '12km/h', label: 'Vento'),
                  _WeatherStat(icon: '👁️', value: '10km', label: 'Visib.'),
                  _WeatherStat(icon: '🌡️', value: '26°C', label: 'Sensação'),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // GRAFICO TEMPERATURA
            _sectionTitle('Temperatura ao Longo do Dia'),

            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '📈 Gráfico de temperatura (horário)',
                    style: TextStyle(color: Colors.grey),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('6h'),
                      Text('8h'),
                      Text('10h'),
                      Text('12h'),
                      Text('14h'),
                      Text('16h'),
                      Text('18h'),
                      Text('20h'),
                      Text('22h'),
                    ],
                  ),

                  Text('14° → 32°'),
                ],
              ),
            ),

            // 7 DIAS
            _sectionTitle('Próximos 7 Dias'),

            const _ForecastCard(),

            const SizedBox(height: 20),

            // PROBABILIDADE DE CHUVA
            _sectionTitle('Probabilidade de Chuva — 7 dias'),

            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('📊 Gráfico de chuva (0% → 100%)',
                      style: TextStyle(color: Colors.grey)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hoje'),
                      Text('Dom'),
                      Text('Seg'),
                      Text('Ter'),
                      Text('Qua'),
                      Text('Qui'),
                      Text('Sex'),
                    ],
                  ),
                ],
              ),
            ),

            // RECOMENDAÇÕES
            _sectionTitle('Recomendações Agrícolas'),

            const _RecommendationCard(
              icon: '⚠️',
              title: 'Adiar aplicações de defensivos',
              text:
                  'Não recomendado entre Seg e Qua devido à alta chance de chuva e vento forte.',
            ),

            const _RecommendationCard(
              icon: '💧',
              title: 'Suspender irrigação',
              text:
                  'Com alta probabilidade de chuva, irrigação não é necessária até quinta.',
            ),

            const _RecommendationCard(
              icon: '🧑‍🌾',
              title: 'Colheita favorável',
              text:
                  'Condições ideais hoje e amanhã antes do período chuvoso.',
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// ---------------- STATS ----------------

class _WeatherStat extends StatelessWidget {
  final String icon;
  final String value;
  final String label;

  const _WeatherStat({
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(icon, style: const TextStyle(fontSize: 20)),
        const SizedBox(height: 4),
        Text(value,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

// ---------------- FORECAST 7 DAYS ----------------

class _ForecastCard extends StatelessWidget {
  const _ForecastCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: const [
          _DayRow('Hoje', '☀️', '5 Jun', '28°', '18°', '5%'),
          Divider(),
          _DayRow('Dom', '⛅', '6 Jun', '25°', '16°', '20%'),
          Divider(),
          _DayRow('Seg', '🌧️', '7 Jun', '22°', '15°', '85%'),
          Divider(),
          _DayRow('Ter', '⛈️', '8 Jun', '20°', '14°', '95%'),
          Divider(),
          _DayRow('Qua', '🌦️', '9 Jun', '21°', '15°', '60%'),
          Divider(),
          _DayRow('Qui', '⛅', '10 Jun', '23°', '16°', '15%'),
          Divider(),
          _DayRow('Sex', '☀️', '11 Jun', '27°', '17°', '-'),
        ],
      ),
    );
  }
}

class _DayRow extends StatelessWidget {
  final String day;
  final String icon;
  final String date;
  final String max;
  final String min;
  final String rain;

  const _DayRow(
    this.day,
    this.icon,
    this.date,
    this.max,
    this.min,
    this.rain,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(day),
        Text(icon),
        Text(date),
        Text('$max / $min'),
        Text(rain),
      ],
    );
  }
}

// ---------------- RECOMMENDATIONS ----------------

class _RecommendationCard extends StatelessWidget {
  final String icon;
  final String title;
  final String text;

  const _RecommendationCard({
    required this.icon,
    required this.title,
    required this.text,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(icon, style: const TextStyle(fontSize: 22)),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(text),
              ],
            ),
          ),
        ],
      ),
    );
  }
}