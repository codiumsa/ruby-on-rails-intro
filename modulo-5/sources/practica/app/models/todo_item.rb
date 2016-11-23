class TodoItem < ActiveRecord::Base
  belongs_to :todo_list

  default_scope {order due_date: :asc}

  def self.number_of_completed_todos
    TodoItem.where(completed: true).count
  end
end
