import 'package:flutter/material.dart';
import 'package:listado_week_meetings/shared/meeting_element.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;

  final meetings = [
    {
      "title": "Meeting with marketing",
      "day": "12",
      "month": "Sep",
      "time": "12:23 - 12:34",
      "priority": "important",
      "iconUrl": "https://cdn-icons-png.flaticon.com/512/5968/5968552.png",
      "isImportant": true,
    },
    {
      "title": "Design review",
      "day": "15",
      "month": "Sep",
      "time": "10:00 - 11:00",
      "priority": "normal",
      "iconUrl":
          "https://img.freepik.com/vector-premium/logotipo-zoom-cuadrado-aislado-sobre-fondo-blanco_469489-910.jpg?semt=ais_hybrid&w=740&q=80",
      "isImportant": false,
    },
    {
      "title": "Backend sync",
      "day": "18",
      "month": "Sep",
      "time": "09:00 - 10:30",
      "priority": "urgent",
      "iconUrl": "https://cdn-icons-png.flaticon.com/512/5968/5968552.png",
      "isImportant": true,
    },
  ];

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      _homePage(),
      const Center(child: Text('Buscar')),
      const Center(child: Text('Perfil')),
    ];
  }

  Widget _homePage() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Your meetings", style: TextStyle(color: Colors.grey)),
            const Text(
              "Weekly schedule",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: meetings.length,
                itemBuilder: (context, index) {
                  final meeting = meetings[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: MeetingElements(
                      meeting["title"] as String,
                      meeting["day"] as String,
                      meeting["month"] as String,
                      meeting["time"] as String,
                      meeting["priority"] as String,
                      meeting["iconUrl"] as String,
                      meeting["isImportant"] as bool,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}
