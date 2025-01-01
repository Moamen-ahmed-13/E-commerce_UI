import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage(
      {super.key, required this.title, required this.image, required this.tag});
  final String title;
  final String image;
  final String tag;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: widget.tag,
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withValues(alpha: .8),
                        Colors.black.withValues(alpha: .1)
                      ],
                    ),
                  ),
                  child: FadeInDown(
                    from: 50,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 40),
                          child: Row(children: [
                            IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                        ),
                        Center(
                          child: Text(
                            widget.title,
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FadeInDown(
                from: 50,
                child: Column(
                  children: [
                    Row(children: [
                      Text(
                        'New Products',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        'View More',
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 13,
                      ),
                    ]),
                    SizedBox(height: 15),
                    ProductCard(
                        image: 'assets/images/beauty-1.jpg', title: 'Beauty'),
                    SizedBox(height: 15),
                    ProductCard(
                        image: 'assets/images/clothes-1.jpg', title: 'Clothes'),
                    SizedBox(height: 15),
                    ProductCard(
                        image: 'assets/images/tech-1.jpg', title: 'Technology'),
                    SizedBox(height: 15),
                    ProductCard(
                        image: 'assets/images/watch.jpg', title: 'Watches'),
                    SizedBox(height: 15),
                    ProductCard(
                        image: 'assets/images/glass.jpg', title: 'Glasses'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget ProductCard({
    image,
    title,
  }) {
    return Container(
      height: 200,
      width: double.infinity,
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '100\$',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Spacer(),
              IconButton(
                style: ButtonStyle(
                    fixedSize: WidgetStateProperty.all(Size(25, 25)),
                    backgroundColor: WidgetStateProperty.all(Colors.white)),
                onPressed: () {},
                icon: Icon(
                  size: 20,
                  Icons.add_shopping_cart_outlined,
                  color: Colors.grey.shade700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
