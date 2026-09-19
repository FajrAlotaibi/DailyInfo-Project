void main() {
  var fact1 = Dailyfact("Today's Fact", "This is a sample fact.", "General");
  var fact2 = Dailyfact(
    "Tomorrow's Fact",
    "This is another sample fact.",
    "General",
  );
  var fact3 = Dailyfact(
    "Day After Tomorrow's Fact",
    "This is a third sample fact.",
    "General",
  );
  fact1.printFact();
  fact2.printFact();
  fact3.printFact();
}

class Dailyfact {
  String title;
  String content;
  String category;

  Dailyfact(this.title, this.content, this.category);
  void printFact() {
    print("Title: $title");
    print("Content: $content");
    print("Category: $category");
  }
}
