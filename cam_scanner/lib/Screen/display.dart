import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:syncfusion_flutter_pdf/pdf.dart';

class DisplayPicture extends StatelessWidget {
  final File imagePaths;

  const DisplayPicture({Key? key, required this.imagePaths}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Picture')),
      body: Column(
        children: [
          Image.file(File(imagePaths.path)),
          ElevatedButton(
              onPressed: () => _convertImageToPDF(imagePaths.path),
              child: Text("Convert to Pdf"))
        ],
      ),
    );
  }

  Future<List<int>> _readImageData(String name) async {
    final ByteData data = await rootBundle.load('images/$name');
    return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  }

  Future<void> _convertImageToPDF(String address) async {
    PdfDocument document = PdfDocument();
    PdfPage page = document.pages.add();
    final PdfImage image = PdfBitmap(await _readImageData(address));
    page.graphics.drawImage(
        image, Rect.fromLTWH(0, 0, page.size.width, page.size.height));
    List<int> bytes = document.save();
    document.dispose();
  }
}
