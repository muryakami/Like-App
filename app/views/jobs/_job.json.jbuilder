json.extract! job, :id, :employer_id, :name, :content, :created_at, :updated_at
json.url job_url(job, format: :json)
