void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const orders = ['margherita', 'pepperoni', 'pineapple'];
  // Your code
  double total = 0;

  for(var pizza in orders){
    if(pizzaPrices.containsKey(pizza)){
      total += pizzaPrices[pizza]!;
    } else {print("pineapple pizza is not on the menu");}
  }
  print('Total: \$$total');
}
