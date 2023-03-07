// ignore_for_file: unnecessary_null_comparison

import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/features/home/presentation/view_model/cubits/similar_books_Cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_app/core/common_widgets/Custom_Button.dart';
import 'package:book_app/core/utils/font_styles.dart';
import 'package:go_router/go_router.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../data/models/book_model/book_model.dart';
import 'custom_pageCount_widget.dart';
import 'custom_readmoretext_widget.dart';

class CustomBookDetailsWidget extends StatelessWidget {
  const CustomBookDetailsWidget({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 40.h),
          child: SizedBox(
            width: 200.w,
            height: 245.h,
            child: Hero(
              tag: bookModel.volumeInfo!.imageLinks!.thumbnail!,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    bookModel.volumeInfo!.imageLinks!.thumbnail!,
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        ),

        //Book Name
        Text(
          bookModel.volumeInfo!.title ?? 'Book Name',
          style: fontStyles.textStyle30aleo,
          textAlign: TextAlign.center,
        ),
        // Author Name
        Padding(
          padding: EdgeInsets.only(top: 4.h, bottom: 16.h),
          child: Wrap(
            direction: Axis.vertical,
            children: List.generate(
                bookModel.volumeInfo!.authors!.length,
                (index) => Text(
                      bookModel.volumeInfo!.authors![index],
                      style: fontStyles.textStyle18
                          .copyWith(color: const Color(0xff707070)),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    )).toList(),
          ),
        ),

        //Rating
        PagesCountWidget(
          width: width,
          pagecount: bookModel.volumeInfo!.pageCount ?? 0,
        ),
        SizedBox(
          height: 15.h,
        ),
        CustomReadMoreWidget(
          description: bookModel.volumeInfo!.description!,
        ),
        SizedBox(
          height: 37.h,
        ),

        //Price and Preview Button
        Row(
          children: [
            const Expanded(
                child: CustomButtonWidget(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              buttontext: '\$Free',
            )),
            Expanded(
                child: CustomButtonWidget(
              onpressed: ()  {
                Uri uri = Uri.parse(bookModel.volumeInfo!.previewLink!);
                bookModel.volumeInfo!.previewLink! == null
                    ? ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('No Available PDF to preview!')))
                    : _launchInBrowser(uri);
              },
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              buttontext: bookModel.volumeInfo!.previewLink! == null
                  ? 'Preview Not Available'
                  : 'Preview',
              fontsize: bookModel.volumeInfo!.previewLink! == null ? 12 : 16,
            )),
          ],
        )
      ],
    );
  }
}

Future<void> _launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $url');
  }
}
