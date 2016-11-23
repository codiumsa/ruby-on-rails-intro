json.extract! todo_item, :id, :due_date, :title, :description, :completed, :todo_list_id, :created_at, :updated_at
json.url todo_item_url(todo_item, format: :json)