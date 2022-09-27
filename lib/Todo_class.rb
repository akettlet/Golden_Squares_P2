class Todo
  def initialize()
    @list = []
  end

  def add_task(task) # task is a string
    @list << task
  end

  def list_tasks() # returns a list of tasks, fails if list is empty
    fail "No task set." if @list == []
    return @list.join("\n")
  end

  def task_complete(task)
    # remove task from list
    fail "No such task" if @list.index(task) == nil
    @list.reject! do |element|
      element == task
    end
  end
end
