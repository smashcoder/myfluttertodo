class ToDo{
  String? id;
  String? todoText;
  bool isDone;
  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
});

  static List<ToDo> todoList(){
    return [
      ToDo(id: '1', todoText: 'A', isDone: true),
      ToDo(id: '2', todoText: 'B', isDone: true),
      ToDo(id: '3', todoText: 'C'),
      ToDo(id: '4', todoText: 'D'),
      ToDo(id: '5', todoText: 'E', isDone: true),
    ];
  }
}