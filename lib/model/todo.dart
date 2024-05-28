class ToDo {
  String? id;
  String? title;
  bool isCompleted;
  ToDo({
    required this.id,
    required this.title,
    this.isCompleted = false,
  });
  static List<ToDo> todoList() {
    return [
      ToDo(id: "01", title: "Morning Excercise", isCompleted: true),
      ToDo(id: "02", title: "Buy Token", isCompleted: true),
      ToDo(id: "03", title: "Checking Email"),
      ToDo(id: "04", title: "Team Meeting"),
      ToDo(
        id: "05",
        title: "Work on mobile apps on for 2 hour",
      ),
      ToDo(id: "06", title: "Dinner with Wife"),
    ];
  }
}
