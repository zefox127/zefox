import 'package:flutter/material.dart';
import 'package:zefox/screens/login_form_screen.dart';
import 'package:zefox/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF4C51C6);
    const primaryLightColor = Color(0xFFEEF2FF);
    const textColor = Color(0xFF1E293B);
    const subtitleColor = Color(0xFF64748B);

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28.0,
                      vertical: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10),

                        // App Logo with Graduation Cap & Chat Bubble concept
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: primaryLightColor,
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              BoxShadow(
                                color: primaryColor.withOpacity(0.08),
                                blurRadius: 20,
                                offset: const Offset(0, 8),
                              ),
                            ],
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              const Icon(
                                Icons.school_rounded,
                                size: 44,
                                color: primaryColor,
                              ),
                              Positioned(
                                right: 14,
                                bottom: 14,
                                child: Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: const BoxDecoration(
                                    color: primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.chat_bubble_rounded,
                                    size: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Title
                        const Text(
                          'CampusMeet',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                            letterSpacing: -0.5,
                          ),
                        ),

                        const SizedBox(height: 10),

                        // Subtitles
                        const Text(
                          'นัดง่าย รู้สถานะ ไม่เสียเวลา',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: subtitleColor,
                            height: 1.4,
                          ),
                        ),
                        const Text(
                          'ในมหาวิทยาลัย',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: subtitleColor,
                            height: 1.4,
                          ),
                        ),

                        const Spacer(),

                        // Redesigned Graphic Section (No people photo)
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 24),
                          width: double.infinity,
                          height: 220,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              // Background decorative circle glow
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: RadialGradient(
                                    colors: [
                                      primaryColor.withOpacity(0.12),
                                      primaryColor.withOpacity(0.01),
                                    ],
                                  ),
                                ),
                              ),

                              // Central Campus Building Illustration Badge
                              Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: primaryColor.withOpacity(0.12),
                                      blurRadius: 24,
                                      offset: const Offset(0, 10),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Container(
                                    width: 88,
                                    height: 88,
                                    decoration: const BoxDecoration(
                                      color: primaryLightColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.account_balance_rounded,
                                      size: 46,
                                      color: primaryColor,
                                    ),
                                  ),
                                ),
                              ),

                              // Feature Badge 1: Appointment / Schedule
                              Positioned(
                                top: 20,
                                left: 30,
                                child: _buildFeatureBadge(
                                  icon: Icons.event_available_rounded,
                                  label: 'นัดหมาย',
                                  badgeColor: const Color(0xFF10B981),
                                ),
                              ),

                              // Feature Badge 2: Real-time Status
                              Positioned(
                                bottom: 25,
                                right: 25,
                                child: _buildFeatureBadge(
                                  icon: Icons.track_changes_rounded,
                                  label: 'รู้สถานะ',
                                  badgeColor: const Color(0xFFF59E0B),
                                ),
                              ),

                              // Feature Badge 3: Easy Contact
                              Positioned(
                                bottom: 20,
                                left: 35,
                                child: _buildFeatureBadge(
                                  icon: Icons.groups_rounded,
                                  label: 'พบอาจารย์',
                                  badgeColor: primaryColor,
                                ),
                              ),

                              // Feature Badge 4: Location Pin
                              Positioned(
                                top: 15,
                                right: 35,
                                child: _buildFeatureBadge(
                                  icon: Icons.location_on_rounded,
                                  label: 'มหาวิทยาลัย',
                                  badgeColor: const Color(0xFFEC4899),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const Spacer(),

                        // Login Button (Primary)
                        SizedBox(
                          width: double.infinity,
                          height: 52,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginFormScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              foregroundColor: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const Text(
                              'เข้าสู่ระบบ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 12),

                        // Register Button (Secondary)
                        SizedBox(
                          width: double.infinity,
                          height: 52,
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterScreen(),
                                ),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              foregroundColor: textColor,
                              side: const BorderSide(
                                color: Color(0xFFC7D2FE),
                                width: 1.5,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const Text(
                              'สมัครสมาชิก',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: textColor,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 28),

                        // Footer Text
                        const Text(
                          'มหาวิทยาลัยราชภัฏเพชรบุรี',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: primaryColor,
                          ),
                        ),

                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  static Widget _buildFeatureBadge({
    required IconData icon,
    required String label,
    required Color badgeColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: badgeColor.withOpacity(0.12),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 14,
              color: badgeColor,
            ),
          ),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF334155),
            ),
          ),
        ],
      ),
    );
  }
}
