import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../routes/app_routes.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String today = DateFormat('d').format(DateTime.now());

    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Row
              Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Image.asset(
      'assets/images/login_logo.jpg',
      height: 28,
    ),
    GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.profile);
      },
      child: const CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage('assets/images/user.jpg'),
      ),
    ),
  ],
),
              const SizedBox(height: 20),

              // Welcome Card
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF805EF3),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/illustration.jpg',
                      height: 80,
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Welcome to Studentverse!",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Access all your student tools here.",
                            style: TextStyle(color: Colors.white70, fontSize: 13),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Upcoming Events
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF6F8FB),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Upcoming Events",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(7, (index) {
                          final day = DateTime.now().add(Duration(days: index - 2));
                          final isToday = DateFormat('d').format(day) == today;
                          return Container(
                            width: 40,
                            height: 40,
                            alignment: Alignment.center,
                            decoration: isToday
                                ? BoxDecoration(
                                    color: const Color(0xFF805EF3),
                                    borderRadius: BorderRadius.circular(12),
                                  )
                                : null,
                            child: Text(
                              DateFormat('d').format(day),
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: isToday ? Colors.white : Colors.black54,
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(Icons.event, color: Colors.black87),
                        SizedBox(width: 10),
                        Text(
                          "Hackathon",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Text("10:00 AM", style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Action Buttons with navigation
              _buildNavTile(context, Icons.lock_outline, "Student Resources Zone", AppRoutes.notes),
              _buildNavTile(context, Icons.event_note_outlined, "Events & Hackathon Updates", AppRoutes.events),
              _buildNavTile(context, Icons.announcement_outlined, "Notice Board + Announcement Center", AppRoutes.courses),
              _buildNavTile(context, Icons.groups_outlined, "Student Collab & TeamUp Space", AppRoutes.chat),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.chat);
        },
        backgroundColor: const Color(0xFF805EF3),
        child: const Icon(Icons.question_answer_rounded),
      ),
    );
  }

  Widget _buildNavTile(BuildContext context, IconData icon, String title, String routeName) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF1C1F2E),
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
      ),
    );
  }
}
