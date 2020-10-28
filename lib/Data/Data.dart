class Item {
  String image;
  String name;
  String description;
  String size;
  String milk;
  String temp;

  Item(
      {this.image,
      this.name,
      this.description,
      this.size,
      this.milk,
      this.temp});
}

final List<Item> coffees = [
  Item(
    image: 'assets/peppermint.png',
    name: 'Peppermint Frappuccino',
    description:
        'Frappuccino® Roast coffee, mocha sauce and peppermint-flavored syrup are blended with milk and ice and topped with whipped cream and dark chocolate curls.',
    size: 'Grande',
    milk: 'Whole Milk',
    temp: 'Hot',
  ),
  Item(
    image: 'assets/chocolateCookieCrumble.png',
    name: 'Chocolate Cookie Crumble Frappuccino',
    description:
        'Mocha sauce and Frappuccino® chips are blended with milk and ice, layered on top of whipped cream and chocolate cookie crumble and topped with vanilla whipped cream, mocha drizzle and even more chocolate cookie crumble.',
    size: 'Grande',
    milk: 'Whole Milk',
    temp: 'Hot',
  ),
  Item(
    image: 'assets/caramel.png',
    name: 'Caramel Frappuccino',
    description:
        ' The Caramel Frappuccino is a trusty favorite (you know it, you love it, and you probably drank plenty of them in your high school days).',
    size: 'Grande',
    milk: 'Whole Milk',
    temp: 'Hot',
  ),
  Item(
    image: 'assets/DoubleChocolatyChip.png',
    name: 'Double Chocolaty Chip Frappuccino',
    description:
        'Rich mocha-flavored sauce meets up with chocolaty chips, milk and ice for a blender bash. Top it off with sweetened whipped cream and mocha drizzle for a real party in your mouth.',
    size: 'Grande',
    milk: 'Whole Milk',
    temp: 'Hot',
  ),
  Item(
    image: 'assets/mocha.png',
    name: 'Mocha Frappuccino',
    description:
        'Mocha sauce, Frappuccino® Roast coffee, milk and ice all come together for a mocha flavor that\'ll leave you wanting more. To change things up, try it affogato-style with a hot espresso shot poured right over the top.',
    size: 'Grande',
    milk: 'Whole Milk',
    temp: 'Hot',
  ),
  Item(
    image: 'assets/vanillaBean.png',
    name: 'vanilla Bean Frappuccino',
    description:
        'This rich and creamy blend of vanilla bean, milk and ice topped with whipped cream takes va-va-vanilla flavor to another level. To change things up, try it affogato-style with a hot espresso shot poured right over the top.',
    size: 'Grande',
    milk: 'Whole Milk',
    temp: 'Hot',
  ),
];
