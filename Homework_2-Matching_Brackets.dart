String isBalanced(String s) {
  List<String> stack = [];
  Map<String, String> pairs = {')': '(', '}': '{', ']': '['};

  for (int i = 0; i < s.length; i++) {
    String char = s[i];

    if (char == '(' || char == '{' || char == '[') {
      stack.add(char); // Push opening brackets
    } else if (char == ')' || char == '}' || char == ']') {
      if (stack.isEmpty || stack.last != pairs[char]) {
        return "Not balanced"; // Mismatch found
      }
      stack.removeLast(); // Pop the matched opening bracket
    }
  }

  return stack.isEmpty ? "Balanced" : "Not balanced";
}

void main() {
  List<String> examples = [
    "{what is (42)}?",
    "[text}",
    "{[[(a)b]c]d}"
  ];

  for (var ex in examples) {
    print("Input: $ex => Output: ${isBalanced(ex)}");
  }
}
