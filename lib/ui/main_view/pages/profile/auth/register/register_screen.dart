import 'package:flutter/material.dart';

class _RegisterScreenTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label, hint;
  final String? description;

  _RegisterScreenTextField({
    required this.controller,
    required this.label,
    required this.hint,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hint,
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffFF0000),
                ),
              ),
            ),
          ),
          if (description != null)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                description!,
                style: const TextStyle(
                  color: Color(0xffFF0000),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterScreenState();
  }
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _nameController = TextEditingController();
  final _dobController = TextEditingController();
  final _addressController = TextEditingController();
  final _provinceConroller = TextEditingController();
  final _countyController = TextEditingController();
  final _districtController = TextEditingController();
  final _subdistrictController = TextEditingController();
  final _postalCodeController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _identityController = TextEditingController();
  final _photoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registrasi Member',
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
        children: [
          _RegisterScreenTextField(
            controller: _nameController,
            label: 'Nama Lengkap',
            hint: 'Nama Lengkap',
          ),
          _RegisterScreenTextField(
            controller: _dobController,
            label: 'Tanggal Lahir',
            hint: 'Tanggal Lahir',
          ),
          _RegisterScreenTextField(
            controller: _addressController,
            label: 'Alamat',
            hint: 'Alamat Lengkap',
          ),
          _RegisterScreenTextField(
            controller: _provinceConroller,
            label: 'Provinsi',
            hint: 'Provinsi',
          ),
          _RegisterScreenTextField(
            controller: _countyController,
            label: 'Kota / Kabupaten',
            hint: 'Kota / Kabupaten',
          ),
          _RegisterScreenTextField(
            controller: _districtController,
            label: 'Kecamatan',
            hint: 'Kecamatan',
          ),
          _RegisterScreenTextField(
            controller: _subdistrictController,
            label: 'Kelurahan',
            hint: 'Kelurahan',
          ),
          _RegisterScreenTextField(
            controller: _postalCodeController,
            label: 'Kode Pos',
            hint: 'Kode Pos',
          ),
          _RegisterScreenTextField(
            controller: _phoneNumberController,
            label: 'Handphone',
            hint: 'Nomor Handphone (0812xxxxxxx) tanpa spasi',
            description:
                'Masukan nomor handphone yang masih aktif untuk menerima kode OTP',
          ),
          _RegisterScreenTextField(
            controller: _identityController,
            label: 'Handphone',
            hint: 'Nomor KTP',
          ),
          Stack(
            children: [
              _RegisterScreenTextField(
                controller: _photoController,
                label: 'Foto Identitas',
                hint: 'Foto e-KTP yang masih berlaku ',
              ),
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                child: IconButton(
                  icon: Icon(Icons.arrow_right_alt),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _dobController.dispose();
    _addressController.dispose();
    _provinceConroller.dispose();
    _countyController.dispose();
    _districtController.dispose();
    _subdistrictController.dispose();
    _postalCodeController.dispose();
    _phoneNumberController.dispose();
    _identityController.dispose();
    _photoController.dispose();
    super.dispose();
  }
}
