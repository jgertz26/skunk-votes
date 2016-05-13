class Project < ActiveRecord::Base
  has_many :project_owners
  has_many :users, through: :project_owners

  validates :name, presence: true
end
