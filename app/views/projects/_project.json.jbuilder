json.extract! project, :id, :title, :details, :started_date, :expected_completion_date, :hours, :tenant_id, :created_at, :updated_at
json.url project_url(project, format: :json)
