class User < ApplicationRecord
  has_many :assigned_issues, as: :assignee, class_name: 'Issue'
  has_many :reported_issues, as: :reporter, class_name: 'Issue'

  validates_presence_of :name
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: 'Email format is incorrect' }
end
