import 'package:flutter/material.dart';

class UserInfoLeftSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nama'),
              Text('Tanggal Lahir'),
              Text('Jenis Kelamin'),
              Text('No. Telepon'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(':'),
              Text(':'),
              Text(':'),
              Text(':'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nama'),
              Text('DD - MM - YYYY'),
              Text('Laki-Laki'),
              Text('08282828282'),
            ],
          ),
          DefaultTextStyle(
            style: const TextStyle(color: Color(0xff0000EE)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ubah'),
                Text('ubah'),
                Text('ubah'),
                Text('ubah'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
