import 'package:blog_app/core/utils/calculate_reading_time.dart';
import 'package:blog_app/features/blog/domain/entities/blog.dart';
import 'package:blog_app/features/blog/presentation/pages/blog_view_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogCard extends StatelessWidget {
  final Blog blog;
  final Color color;
  final Color textColor;
  const BlogCard({
    super.key,
    required this.blog,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, BlogViewPage.route(blog));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(16).copyWith(top: 5),
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Chips Topics
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: blog.topics
                        .map((e) => Padding(
                              padding: const EdgeInsets.all(5.0).copyWith(
                                right: blog.topics.indexOf(e) ==
                                        blog.topics.length - 1
                                    ? 0
                                    : 5,
                                left: blog.topics.indexOf(e) == 0 ? 0 : 5,
                              ),
                              child: Chip(
                                label: Text(
                                  e.toUpperCase(),
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: .5,
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                //Card Title
                Text(
                  blog.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.bebasNeue(
                    textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: textColor,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              '${calculateReadingTime(blog.content)} min',
              style: GoogleFonts.bebasNeue(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 17,
                  wordSpacing: 1,
                  color: textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
