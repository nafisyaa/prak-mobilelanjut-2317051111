import 'package:flutter/material.dart';


class DashboardScreen extends StatelessWidget {
  static const String route = '/dashboard';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Latar belakang abu-abu muda
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
      ),
      // AppBar
      // COLUMN: Menyusun semua konten dari atas ke bawah
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Beri jarak dari tepi layar
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Ratakan konten ke kiri
          children: [
            // --- Teks Sapaan ---
            Text(
              'Selamat Datang,',
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            const Text(
              'Nafisya Yagtias',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),

            // --- Kartu Informasi Utama ---
            // CONTAINER: Berfungsi sebagai kartu dengan sudut tumpul dan bayangan
            Container(
              width: double.infinity, // Lebar kartu memenuhi layar
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ), // BoxDecoration
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // --- ROW: Menyejajarkan ikon dan teks "Saldo"
                  Row(
                    children: [
                      Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Colors.grey[500]),
                    const SizedBox(width: 8),
                      Text(
                        'Saldo Saat Ini',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ), // Row

                  const SizedBox(height: 8),
                  const Text(
                    'Rp 10.000.000',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ), // Text

                  const SizedBox(height: 24),

                  // Tombol Aksi di dalam kartu
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1E88FF),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ), // RoundedRectangleBorder
                      ),
                      child: const Text('Lihat Detail Transaksi'),
                    ), // ElevatedButton
                   ), // SizedBox
                   
                  // menambahkan tampilan pada space yang kosong
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 26,
                              backgroundColor: Colors.blue.withOpacity(0.1),
                              child: const Icon(Icons.add_circle_outline,
                                  color: Color(0xFF1E88FF)),
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'Top Up',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 26,
                              backgroundColor: Colors.blue.withOpacity(0.1),
                              child: const Icon(Icons.send_outlined,
                                  color: Color(0xFF1E88FF)),
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'Transfer',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 26,
                              backgroundColor: Colors.blue.withOpacity(0.1),
                              child: const Icon(Icons.receipt_long_outlined,
                                  color: Color(0xFF1E88FF)),
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'Riwayat',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  ],
                 ), // Column
                ), // Container
               ],
              ), // Column
             ), // Padding
            ); // Scaffold
           }
          }