require 'Todo_class'

RSpec.describe "Todo_class" do
  context "having added a task" do
    it "list_tasks returns a list of the task" do
      todo = Todo.new
      todo.add_task("Walk the dog")
      expect(todo.list_tasks()).to eq  "Walk the dog"
    end
  end

  context "having not added a task" do
    it "list_tasks throws the error No task set" do
      todo = Todo.new
      expect{todo.list_tasks()}.to raise_error "No task set."
    end
  end

  context "adding an empty task" do
    it "list_tasks returns a list of an empty string" do
      todo = Todo.new
      todo.add_task("")
      expect(todo.list_tasks()).to eq ""
    end
  end

  context "adding two tasks" do
    it "list_tasks returns a list of the tasks" do
      todo = Todo.new
      todo.add_task("Walk the dog")
      todo.add_task("Feed the dog")
      expect(todo.list_tasks()).to eq "Walk the dog\nFeed the dog"
    end
  end

  context "adding two tasks and removing one" do
    it "list_tasks to return the remaining task" do
      todo = Todo.new
      todo.add_task("Walk the dog")
      todo.add_task("Feed the dog")
      todo.task_complete("Walk the dog")
      expect(todo.list_tasks()).to eq "Feed the dog"
    end
  end

  context "adding two tasks and removing one" do
    it "completing a task that doesn't exist throws the error No such task" do
      todo = Todo.new
      todo.add_task("Walk the dog")
      todo.add_task("Feed the dog")
      expect{todo.task_complete("Stroke the dog")}.to raise_error "No such task"
    end
  end
end
