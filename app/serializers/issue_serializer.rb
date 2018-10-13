class IssueSerializer < ActiveModel::Serializer
  attributes :id, :summary, :status, :reporter, :assignee, :created_at,
    :updated_at
end
