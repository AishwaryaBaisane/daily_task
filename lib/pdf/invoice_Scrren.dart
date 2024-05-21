import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class InvoicePage extends StatefulWidget {
  const InvoicePage({super.key});

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Invoice Screen',
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/pdf');
              },
              child: Icon(Icons.picture_as_pdf))
        ],
      ),
      body: Column(
        children: List.generate(
          invoiceList.length,
          (index) => ListTile(
            title: Text(invoiceList[index].name!),
            subtitle: Text(invoiceList[index].price!),
            trailing: Text(invoiceList[index].category!),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            invoiceList.add(
              InvoiceModel(name: 'Hp', price: '23676', category: 'laptop'),
            );
          });
        },
      ),
    );
  }
}

List<InvoiceModel> invoiceList = [
  InvoiceModel(name: 'Samsung', price: '80311', category: 'mobile'),
  InvoiceModel(name: 'Dell', price: '40000', category: 'laptop'),
  InvoiceModel(name: 'Apple', price: '60000', category: 'laptop'),
  InvoiceModel(name: 'Vivo', price: '80000', category: 'mobile'),
  InvoiceModel(name: 'Oppo', price: '10000', category: 'mobile'),
  InvoiceModel(name: 'Iphone', price: '92000', category: 'mobile'),
  InvoiceModel(name: 'Realme', price: '90000', category: 'mobile'),
  InvoiceModel(name: 'Oneplus', price: '70500', category: 'mobile'),
];

class InvoiceModel {
  String? name;
  String? price;
  String? category;

  InvoiceModel({this.name, this.price, this.category});
}

Future<Uint8List> generatePdf() {
  final pdf = pw.Document();
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (context) => pw.Row(children: [
        pw.SizedBox(
          height: 20
        ),
        pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: List.generate(
            invoiceList.length,
            (index) => pw.Text(
              '${invoiceList[index].name} ',
              style: pw.TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
        pw.SizedBox(width: 90),
        pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
              invoiceList.length,
              (index) => pw.Text(
                '${invoiceList[index].price}',
                style: pw.TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
        pw.SizedBox(
          width: 90,
        ),
        pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
              invoiceList.length,
              (index) => pw.Text(
                '${invoiceList[index].category}',
                style: pw.TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ]),
    ),
  );
  return pdf.save();
}
