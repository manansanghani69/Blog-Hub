import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/core/utils/calculate_reading_time.dart';
import 'package:blog_app/core/utils/format_date.dart';
import 'package:blog_app/features/blog/domain/entities/blog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogViewPage extends StatelessWidget {
  const BlogViewPage({super.key, required this.blog});
  final Blog blog;
  static route(Blog blog) =>
      MaterialPageRoute(builder: (context) => BlogViewPage(blog: blog));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.blogBackgroundColor,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 20,
            ),
          )),
      body: Scrollbar(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  blog.title,
                  style: GoogleFonts.bebasNeue(
                    textStyle: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      wordSpacing: 1,
                    ),
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),
                Text(
                  "By ${blog.posterName}",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      wordSpacing: 1,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      formatDateByDDMMMYYYY(blog.updatedAt).toString(),
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppPallete.fontColor2,
                          fontSize: 12,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    Text(
                      "${calculateReadingTime(blog.content)} min",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppPallete.fontColor2,
                          fontSize: 12,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(blog.imageUrl),
                ),
                const SizedBox(height: 20),
                Text(
                  blog.content.trim(),
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
