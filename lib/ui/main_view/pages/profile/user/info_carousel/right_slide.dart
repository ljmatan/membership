import 'package:flutter/material.dart';

class UserInfoRightSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text('Rumah'),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(color: Colors.grey.shade300),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                      child: Text(
                        'Alamat Utama',
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: Icon(Icons.more_horiz),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              'Nama Customer',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
          Text('0822828282828'),
          Text(
            'Kec. Kecamatan, Kab. Kabupaten, Provinsi, (Kode Pos) Note : Ancer - ancer.',
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.pin_drop,
                color: const Color(0xffff5050),
              ),
              Text('Sudah Pinpoint'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 36,
                        child: Center(
                          child: Text('Tambah Alamat'),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 36,
                        child: Center(
                          child: Text('Ubah Alamat'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
