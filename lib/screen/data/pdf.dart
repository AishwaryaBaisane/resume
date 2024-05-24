import 'dart:ffi';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resume/utils/global/global.dart';

import '../data.dart';
import 'Education.dart';
import 'Skills.dart';
import 'object.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PdfPreview(
        build: (format) => genterepdf(),
      ),
    );
  }
}

Future<Uint8List> genterepdf() async {
  final pdf = pw.Document();
  final image = pw.MemoryImage(fileImage!.readAsBytesSync());
  pdf.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      build: (context) {
        return [
          pw.Container(
            height: 725,
            width: double.infinity,
            decoration: pw.BoxDecoration(color: PdfColors.white),
            child: pw.Row(
              // mainAxisAlignment: pw.MainAxisAlignment.start,
              children: [
                pw.Padding(
                  padding: pw.EdgeInsets.only(right: 0),
                  child: pw.Column(
                    // mainAxisAlignment: pw.MainAxisAlignment.start,
                    children: [
                      pw.Stack(
                        children: [
                          pw.Container(
                            height: 220,
                            width: 200,
                            color: PdfColor.fromHex('28364b'),
                          ),
                          pw.Padding(
                            padding: pw.EdgeInsets.only(left: 60, top: 50),
                            child: pw.Container(
                              height: 195,
                              width: 195,
                              decoration: pw.BoxDecoration(
                                color: PdfColor.fromHex('28364b'),
                                shape: pw.BoxShape.circle,
                                border: pw.Border.all(
                                  color: PdfColors.white,
                                  width: 9,
                                ),
                              ),
                              child: pw.ClipRRect(
                                  horizontalRadius: 100,
                                  verticalRadius: 100,
                                  child: pw.Image(image, fit: pw.BoxFit.cover)),
                            ),
                          ),
                        ],
                      ),
                      pw.SizedBox(
                        height: 25,
                      ),
                      pw.Text(
                        'About Me',
                        style: pw.TextStyle(
                            color: PdfColor.fromHex('28364b'),
                            fontSize: 30,
                            fontWeight: pw.FontWeight.bold),
                      ),
                      pw.SizedBox(
                        height: 15,
                      ),
                      pw.Container(
                        height: 100,
                        width: 200,
                        color: PdfColors.white,
                        child: pw.Text('${txtObjective.text}',
                            style: pw.TextStyle(fontSize: 17)),
                      ),
                      pw.SizedBox(
                        height: 35,
                      ),
                      pw.Text(
                        'Contact',
                        style: pw.TextStyle(
                            color: PdfColor.fromHex('28364b'),
                            fontSize: 30,
                            fontWeight: pw.FontWeight.bold),
                      ),
                      pw.SizedBox(height: 20),
                      // pw.Row(children: [
                      pw.Padding(
                        padding: pw.EdgeInsets.only(right: 120),
                        child: pw.Text('${textPhone.text}',
                            style: pw.TextStyle(fontSize: 20)),
                      ),
                      // ]),
                      pw.Padding(
                        padding: pw.EdgeInsets.only(right: 30),
                        child: pw.Row(children: [
                          pw.Text('${textRefEmail.text}',
                              style: pw.TextStyle(fontSize: 20))
                        ]),
                      ),
                      pw.Padding(
                        padding: pw.EdgeInsets.only(right: 50),
                        child: pw.Row(
                          children: [
                            pw.Text('${textAdd.text}',
                                style: pw.TextStyle(fontSize: 20))
                          ],
                        ),
                      ),
                      pw.SizedBox(height: 20),
                      pw.Row(
                        children: [
                          pw.Container(
                            height: 30,
                            width: 200,
                            decoration: pw.BoxDecoration(
                              color: PdfColor.fromHex('28364b'),
                            ),
                            child: pw.Center(
                              child: pw.Text(
                                'LANGUAGE',
                                style: pw.TextStyle(
                                  color: PdfColors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      pw.SizedBox(height: 15),
                      pw.Row(
                        children: [
                          pw.Padding(
                            padding: pw.EdgeInsets.only(right: 120),
                            child: pw.Text(
                              'English',
                              style: pw.TextStyle(
                                  color: PdfColors.black, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      pw.SizedBox(height: 10),
                      pw.Row(
                        children: [
                          pw.Padding(
                            padding: pw.EdgeInsets.only(right: 140),
                            child: pw.Text(
                              'Hindi',
                              style: pw.TextStyle(
                                  color: PdfColors.black, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      pw.SizedBox(height: 5),
                      pw.Row(
                        children: [
                          pw.Padding(
                            padding: pw.EdgeInsets.only(right: 120),
                            child: pw.Text(
                              'Chinese',
                              style: pw.TextStyle(
                                  color: PdfColors.black, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                pw.Padding(
                  padding: pw.EdgeInsets.only(right: 150),
                  child: pw.Column(
                    children: [
                      pw.SizedBox(height: 10),
                      pw.Padding(
                        padding: pw.EdgeInsets.only(right: 50),
                        child: pw.Text(
                          'Aishawarya',
                          style: pw.TextStyle(
                              color: PdfColor.fromHex('28364b'),
                              fontSize: 30,
                              fontWeight: pw.FontWeight.bold),
                        ),
                      ),
                      pw.Padding(
                        padding: pw.EdgeInsets.only(right: 20),
                        child: pw.Text(
                          'Baisane',
                          style: pw.TextStyle(
                              color: PdfColor.fromHex('28364b'),
                              fontSize: 30,
                              fontWeight: pw.FontWeight.bold),
                        ),
                      ),
                      pw.Padding(
                        padding: pw.EdgeInsets.only(left: 50, top: 10),
                        child: pw.Text(
                          'Flutter Devloper',
                          style: pw.TextStyle(
                            color: PdfColor.fromHex('28364b'),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      pw.SizedBox(height: 150),
                      pw.Row(
                        children: [
                          pw.Container(
                            height: 30,
                            width: 260,
                            decoration: pw.BoxDecoration(
                              color: PdfColor.fromHex('28364b'),
                            ),
                            child: pw.Center(
                              child: pw.Text(
                                'EXPERIENCE',
                                style: pw.TextStyle(
                                  color: PdfColors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      pw.SizedBox(height: 30),
                      pw.Padding(
                        padding: pw.EdgeInsets.only(right: 180),
                        child: pw.Row(children: [
                          pw.Text(
                            '${textCompanyName.text}',
                            style: pw.TextStyle(
                              fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          )
                        ]),
                      ),
                      pw.Padding(
                        padding: pw.EdgeInsets.only(right: 180),
                        child: pw.Row(children: [
                          pw.Text(
                            '${textJobTile.text}',
                            style: pw.TextStyle(
                              fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          )
                        ]),
                      ),
                      pw.Padding(
                        padding: pw.EdgeInsets.only(right: 190),
                        child: pw.Row(children: [
                          pw.Text(
                            '${textStartDate.text}',
                            style: pw.TextStyle(
                              fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.Text(
                            ' - ',
                            style: pw.TextStyle(
                              fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.Text(
                            '${textEndDate.text}',
                            style: pw.TextStyle(
                              fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          )
                        ]),
                      ),
                      pw.SizedBox(height: 15),
                      pw.Padding(
                        padding: pw.EdgeInsets.only(right: 50),
                        child: pw.Row(
                          children: [
                            pw.Container(
                              height: 100,
                              width: 200,
                              color: PdfColors.white,
                              child: pw.Text(
                                  'Whether you are aiming for a career change or opting for a better job opportunity',
                                  style: pw.TextStyle(fontSize: 17)),
                            ),
                          ],
                        ),
                      ),
                      pw.SizedBox(height: 0),
                      pw.Row(
                        children: [
                          pw.Container(
                            height: 30,
                            width: 260,
                            decoration: pw.BoxDecoration(
                              color: PdfColor.fromHex('28364b'),
                            ),
                            child: pw.Center(
                              child: pw.Text(
                                'EDUCATION',
                                style: pw.TextStyle(
                                  color: PdfColors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      pw.Row(
                        children: List.generate(
                          ControllerList.length,
                          (index) => pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.SizedBox(height: 10),
                              pw.Padding(
                                padding: pw.EdgeInsets.only(right: 50),
                                child: pw.Text(
                                    '${ControllerList[index].txtSchool!.text}',
                                    style: pw.TextStyle(
                                        fontWeight: pw.FontWeight.bold,
                                        color: PdfColors.black,
                                        fontSize: 17)),
                              ),
                              pw.Text(
                                  '${ControllerList[index].txtCourse!.text}',
                                  style: pw.TextStyle(
                                      color: PdfColors.black, fontSize: 17)),
                              pw.Text(
                                  '${ControllerList[index].txtGrade!.text}%',
                                  style: pw.TextStyle(
                                      color: PdfColors.black, fontSize: 17)),
                              pw.Text(
                                '${ControllerList[index].txtYear!.text} - 2024',
                                style: pw.TextStyle(
                                    color: PdfColors.black, fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ),
                      pw.SizedBox(height: 10),
                      pw.SizedBox(height: 0),
                      pw.Row(
                        children: [
                          pw.Container(
                            height: 30,
                            width: 260,
                            decoration: pw.BoxDecoration(
                              color: PdfColor.fromHex('28364b'),
                            ),
                            child: pw.Center(
                              child: pw.Text(
                                'SKILLS SUMMARY',
                                style: pw.TextStyle(
                                  color: PdfColors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      pw.SizedBox(height: 15),
                      pw.Padding(
                        padding: pw.EdgeInsets.only(right: 150),
                        child: pw.Text(
                          'Java,Flutter',
                          style: pw.TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ];
      },
    ),
  );
  PdfPreview(
    build: (format) => pdf.save(),
  );
  return pdf.save();
}
