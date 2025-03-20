void main() {
  Map<String, int> fruitPrices = {
    "apple": 5,
    "banana": 10,
    "orange": 15,
    "mango": 20,
  };

  print("${getPrice("apple", fruitPrices)}");
}

int getPrice(String fruitName, Map<String, int> fruitPrices) {
  if (fruitPrices.containsKey(fruitName.toLowerCase())) {
    return fruitPrices[fruitName.toLowerCase()]!;
  } else {
    return -1;
  }
}
