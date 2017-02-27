json.(task, :id, :title, :weight, :completed, :updated_at)

json.url request.original_url + task.id
