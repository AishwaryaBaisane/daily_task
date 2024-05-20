import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:task3/pdf/invoice_Scrren.dart';

class printing extends StatefulWidget {
  const printing({super.key});

  @override
  State<printing> createState() => _printingState();
}

class _printingState extends State<printing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('pdf'),),
      body: PdfPreview(
        pdfPreviewPageDecoration: BoxDecoration(color: Colors.white,),
        build: (format) => generatePdf(),
      ),

    );
  }
}
