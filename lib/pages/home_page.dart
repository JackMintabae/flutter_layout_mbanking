import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Koperasi Undiksha",
          style: TextStyle(
            color: Colors.white, // Warna teks diubah menjadi putih
          ),
        ),
        backgroundColor: const Color.fromARGB(
          255,
          22,
          16,
          176,
        ), // Background biru
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
            color: Colors.white, // Warna ikon menjadi putih
          ),
        ],
      ),
      body: Column(
        children: [
          // Kartu informasi nasabah
          Card(
            margin: const EdgeInsets.all(16.0),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.jpg'),
              ),
              title: const Text("Nasabah: Jack"),
              subtitle: const Text("Total Saldo Anda: Rp. 1.200.000"),
            ),
          ),
          // Grid menu utama
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              MenuIcon(icon: Icons.account_balance_wallet, label: "Cek Saldo"),
              MenuIcon(icon: Icons.send, label: "Transfer"),
              MenuIcon(icon: Icons.savings, label: "Deposito"),
              MenuIcon(icon: Icons.payment, label: "Pembayaran"),
              MenuIcon(icon: Icons.attach_money, label: "Pinjaman"),
              MenuIcon(icon: Icons.history, label: "Mutasi"),
            ],
          ),
          const SizedBox(height: 20),
          // Informasi bantuan
          Text(
            "Butuh Bantuan? 0822-1632-8622",
            style: TextStyle(
              color: const Color.fromARGB(255, 22, 16, 176),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      // Navigasi bawah
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(
          255,
          22,
          16,
          176,
        ), // Warna item aktif
        unselectedItemColor: Colors.grey, // Warna item tidak aktif
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "QR Code"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

// Widget untuk menu ikon
class MenuIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const MenuIcon({required this.icon, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 40,
          color: const Color.fromARGB(255, 22, 16, 176), // Warna ikon biru
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
