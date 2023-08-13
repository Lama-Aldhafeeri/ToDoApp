class ToDoListModel {
  int taskId;
  String task;
  bool? status;
  int userId;

  ToDoListModel(
      {required this.taskId,
      required this.task,
      required this.userId,
      this.status = false});

  factory ToDoListModel.formJSON(Map tasks) {
    return ToDoListModel(
        taskId: tasks['id'],
        task: tasks['todo'],
        userId: tasks['userId'],
        status: tasks['completed']);
  }
}
