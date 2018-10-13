class Issue < ApplicationRecord
  belongs_to :assignee, polymorphic: true, class_name: 'User'
  belongs_to :reporter, polymorphic: true, class_name: 'User'

  validates_presence_of :summary, :status
end
