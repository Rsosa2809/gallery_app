import 'package:flutter/material.dart';
import 'details_page.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'images/1.jpeg',
    price: '\$MXN 145.00',
    photographer: 'SHEIN',
    title: 'SHEIN',
    details: 'Blusa de cuello V con encaje en contraste - Talla: XS S M L',
  ),
  ImageDetails(
    imagePath: 'images/2.jpeg',
    price: '\$MXN 192.00',
    photographer: 'SHEIN',
    title: 'SHEIN',
    details:
        'Camiseta de manga corta con estampado de Navidad - Talla: XS S M L',
  ),
  ImageDetails(
    imagePath: 'images/3.jpeg',
    price: '\$MXN 98.00',
    photographer: 'SHEIN',
    title: 'SHEIN',
    details: 'Top de tirantes de lunares con fruncido - Talla: XS S M L',
  ),
  ImageDetails(
    imagePath: 'images/4.jpeg',
    price: '\$MXN 138.00',
    photographer: 'SHEIN',
    title: 'SHEIN',
    details: 'Top con cinturón cruzado floral - Talla: XS S M L',
  ),
  ImageDetails(
    imagePath: 'images/5.jpeg',
    price: '\$MXN 171.00',
    photographer: 'SHEIN',
    title: 'SHEIN',
    details:
        '10 Luces LED de cadena de muñeco de nieve de Navidad - Talla:  Unitalla',
  ),
  ImageDetails(
    imagePath: 'images/6.jpeg',
    price: '\$MXN 161.00',
    photographer: 'SHEIN',
    title: 'SHEIN',
    details: 'Camiseta de Navidad con estampado de pingüino',
  ),
  ImageDetails(
    imagePath: 'images/7.jpeg',
    price: '\$MXN 179.00',
    photographer: 'SHEIN',
    title: 'SHEIN',
    details:
        'Vestido con malla con perla ribete en forma de lechuga Talla: XS S M L',
  ),
  ImageDetails(
    imagePath: 'images/8.jpeg',
    price: '\$MXN 169.00',
    photographer: 'SHEIN',
    title: 'SHEIN',
    details:
        'Vestido de niña de rayas con estampado de animal - Talla: XS S M L',
  ),
  ImageDetails(
    imagePath: 'images/9.jpeg',
    price: '\$MXN 441.00',
    photographer: 'SHEIN',
    title: 'SHEIN',
    details:
        'Vestido de niña de cuello alto Camiseta con botón y cinturón - Talla: XS S M L',
  ),
  ImageDetails(
    imagePath: 'images/10.jpeg',
    price: '\$MXN 200.00',
    photographer: 'SHEIN',
    title: 'SHEIN',
    details:
        'Camiseta con estampado de Navidad de malla transparente - Talla: XS S M L',
  ),
  ImageDetails(
    imagePath: 'images/11.jpeg',
    price: '\$MXN 179.00',
    photographer: 'SHEIN',
    title: 'Top',
    details:
        'SHEIN Top corto de manga farol de malla con bordado - Talla: XS S M L',
  ),
  ImageDetails(
    imagePath: 'images/12.jpeg',
    price: '\$MXN 357.00',
    photographer: 'SHEIN',
    title: 'Vestido',
    details: 'SHEIN Vestido de tirantes con botón - Talla: XS S M L',
  ),
  ImageDetails(
    imagePath: 'images/13.jpeg',
    price: '\$MXN 137.00',
    photographer: 'SHEIN',
    title: 'Top',
    details: 'SHEIN Top ribete fruncido con un hombro - Talla: XS S M L',
  ),
  ImageDetails(
    imagePath: 'images/14.jpeg',
    price: '\$MXN 176.00',
    photographer: 'SHEIN',
    title: 'Vestido',
    details: 'SHEIN Vestido de niña a rayas casual - Talla: XS S M L',
  ),
  ImageDetails(
    imagePath: 'images/15.jpeg',
    price: '\$MXN 161.00',
    photographer: 'SHEIN',
    title: 'Camiseta',
    details: 'SHEIN Camiseta de Navidad con slogan - Talla: XS S M L',
  ),
  ImageDetails(
    imagePath: 'images/16.jpeg',
    price: '\$MXN 169.00',
    photographer: 'SHEIN',
    title: 'Camiseta',
    details: 'SHEIN Camiseta de Navidad con slogan - Talla: XS S M L',
  ),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              'Paola Boutique',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[index].imagePath,
                              title: _images[index].title,
                              photographer: _images[index].photographer,
                              price: _images[index].price,
                              details: _images[index].details,
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  final String price;
  final String photographer;
  final String title;
  final String details;
  ImageDetails({
    @required this.imagePath,
    @required this.price,
    @required this.photographer,
    @required this.title,
    @required this.details,
  });
}
