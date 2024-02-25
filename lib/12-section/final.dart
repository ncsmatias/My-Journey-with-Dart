/*
  * Final
    É uma variável inicializada apenas quando acessada em tempo de execução e em coleções
    final nem todo conteúdo será final. O valor de uma variável final não pode ser alterado
*/
void main(List<String> args) {
  // Objeto em queda livre leva 5s para chegar ao solo! Qual a velocidade máxima em queda livre?
  final gravity = 9.8;
  double time = 5;
  double speed = time * gravity;

  print('Velocidade máxima: $speed');

  for (int index = 0; index <= 10; index++) {
    final counter = index; // A cada loop essa variável está sendo instaciada
    print('Contagem: $counter');
  }

  ProductsCategory productsCategory =
      ProductsCategory('Jardinagem', ['Orquideas', 'Adubo', 'Terra vermelha']);
  productsCategory.categoryName = 'Jardim e Plantas';
  // productsCategory.products = []; Erro: 'products' não podem ser usados ​​como setter porque são finais.

  productsCategory.info();

  // Contudo podemos manipular o array, mesmo que ele seja final
  productsCategory.products.clear();

  productsCategory.info();
}

class ProductsCategory {
  String categoryName;
  final List<String> products;

  ProductsCategory(this.categoryName, this.products);

  info() {
    print('Categoria: $categoryName; Produtos: $products');
  }
}
