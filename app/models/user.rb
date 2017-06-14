class User < ApplicationRecord
  after_create :check_developer


  has_many :projects, ->{where(project_owner: true)}, foreign_key: :owner_id
  has_many :tasks, foreign_key: :developer_id

  private
  
  def check_developer
  	self.update(developer_id: self.id) if self.developer
  	
  end

end
