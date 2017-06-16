class Project < ApplicationRecord
  belongs_to :owner,->{where(project_owner: true)}, class_name: "User"
  has_many :tasks, dependent: :destroy
end
