// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:woop/styles/colours.dart';

class Accounts extends StatefulWidget {
  const Accounts({super.key});

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text(
              'Accounts',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            backgroundColor: secondary),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  color: secondary,
                  height: 80,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 10),

                    // ignore: sort_child_properties_last
                    children: [
                      FloatingActionButton(
                        heroTag: 'fab1',
                        onPressed: () {},
                        backgroundColor: primary,
                        child: const Icon(LineIcons.creditCard,
                            color: Colors.white),
                      ),
                      const SizedBox(width: 10),
                      FloatingActionButton(
                        heroTag: 'fab2',
                        onPressed: () {},
                        backgroundColor: primary,
                        child:
                            const Icon(LineIcons.paypal, color: Colors.white),
                      ),
                      const SizedBox(width: 10),
                      FloatingActionButton(
                        heroTag: 'fab3',
                        onPressed: () {},
                        backgroundColor: primary,
                        child: const Icon(LineIcons.moneyBill,
                            color: Colors.white),
                      ),
                      const SizedBox(width: 10),
                      FloatingActionButton(
                        heroTag: 'fab4',
                        onPressed: () {},
                        backgroundColor: primary,
                        child: const Icon(LineIcons.piggyBank,
                            color: Colors.white),
                      ),
                      const SizedBox(width: 10),
                      FloatingActionButton(
                        heroTag: 'fab5',
                        onPressed: () {},
                        backgroundColor: primary,
                        child: const Icon(LineIcons.creditCard,
                            color: Colors.white),
                      ),
                      const SizedBox(width: 10),
                      FloatingActionButton(
                        heroTag: 'fab6',
                        onPressed: () {},
                        backgroundColor: primary,
                        child:
                            const Icon(LineIcons.paypal, color: Colors.white),
                      ),
                    ],
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: secondary,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: QrImage(
                        data: "1234567890",
                        version: QrVersions.auto,
                        size: 150.0,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'ativo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const InfoRowSimple(
                        text: '09/09/2022', label: 'recebida em'),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
              const InfoRow(
                label: '21/09/2022',
                text: 'HBAJB04934',
                icon: LineIcons.qrcode,
              ),
              const Divider(),
              const InfoRow(
                label: '12/12/2022',
                text: 'HTCVBZVBZ90',
                icon: LineIcons.qrcode,
              ),
              const Divider(),
              const InfoRow(
                label: '12/12/2022',
                text: 'TWTWYWRUI99',
                icon: LineIcons.qrcode,
              ),
              const Divider(),
              const InfoRow(
                label: '09/01/2022',
                text: 'ZXZZB04934',
                icon: LineIcons.qrcode,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String text;
  final String label;
  final IconData icon;
  const InfoRow(
      {Key? key, required this.text, required this.label, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Usado em ',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: ' $label',
                      style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class InfoRowSimple extends StatelessWidget {
  final String text;
  final String label;
  const InfoRowSimple({Key? key, required this.text, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white54,
            fontSize: 12,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1,
          ),
        ),
        const SizedBox(width: 7),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1,
          ),
        ),
      ],
    );
  }
}
