import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if(mounted) {
      setState(() {
      _selectedIndex = index;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color(0xffFFFFFF).withOpacity(1)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarItem(
            icon: Icons.home,
            label: "Home Overview",
            isSelected: _selectedIndex == 0,
            onTap: () => _onItemTapped(0),
          ),
          NavBarItem(
            icon: Icons.settings,
            label: "Pookie Tool's",
            isSelected: _selectedIndex == 1,
            onTap: () => _onItemTapped(1),
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const NavBarItem({super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Colors.grey : Colors.transparent),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            Icon(icon, color: isSelected ? Colors.black : Colors.grey),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.black : Colors.grey,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}