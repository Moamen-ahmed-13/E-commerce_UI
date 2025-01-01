import 'package:animate_do/animate_do.dart';
import 'package:day_13/ShopPages/category_page.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withValues(alpha: .8),
                      Colors.black.withValues(alpha: .3)
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FadeInDown(
                    from: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          'Our New Collection',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(children: [
                          Text(
                            'VIEW MORE',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 15,
                          ),
                        ])
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  FadeInDown(
                    from: 100,
                    child: Row(
                      children: [
                        Text(
                          'Categories',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          'All',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  FadeInDown(
                    from: 100,
                    child: SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          categoryList(
                            image: 'assets/images/beauty.jpg',
                            title: 'Beauty',
                            tag: 'beauty',
                          ),
                          categoryList(
                            image: 'assets/images/clothes.jpg',
                            title: 'Clothes',
                            tag: 'clothes',
                          ),
                          categoryList(
                            image: 'assets/images/perfume.jpg',
                            title: 'Perfume',
                            tag: 'perfume',
                          ),
                          categoryList(
                            image: 'assets/images/glass.jpg',
                            title: 'Glass',
                            tag: 'glass',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  FadeInDown(
                    from: 120,
                    child: Row(
                      children: [
                        Text(
                          'Best Sellers',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          'All',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  FadeInDown(
                    from: 120,
                    child: SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          categoryList(
                            image: 'assets/images/tech.jpg',
                            title: 'Tech',
                            size: 2 / 1.3,
                            tag: 'tech',
                          ),
                          categoryList(
                            image: 'assets/images/watch.jpg',
                            title: 'Watch',
                            size: 2 / 1.3,
                            tag: 'watch',
                          ),
                          categoryList(
                            image: 'assets/images/perfume.jpg',
                            title: 'Perfume',
                            size: 2 / 1.3,
                            tag: 'perfume2',
                          ),
                          categoryList(
                            image: 'assets/images/glass.jpg',
                            title: 'Glass',
                            size: 2 / 1.3,
                            tag: 'glass2',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryList({image, title, size = 1.5 / 1.7, tag}) {
    return AspectRatio(
      aspectRatio: size,
      child: Hero(
        tag: tag,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    CategoryPage(image: image, title: title, tag: tag),
              ),
            );
          },
          child: Material(
            child: Container(
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withValues(alpha: .8),
                      Colors.black.withValues(alpha: .1)
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
