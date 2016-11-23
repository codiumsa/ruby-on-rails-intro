json.extract! todo_list, :id, :list_due_date, :list_name, :user_id, :created_at, :updated_at
json.url todo_list_url(todo_list, format: :json)