class User < ApplicationRecord
  after_create :check_developer
  mount_uploader :image, ImageUploader
  has_secure_password

  has_many :projects, foreign_key: :owner_id
  has_many :tasks,foreign_key: :owner_id
  

  scope :developer, -> {where(developer: true)}
  scope :project_owner, -> {where(project_owner: true)}
  

  validates :password, confirmation: true
  #validates :password_confirmation, presence: true

  private
  
  def check_developer
  	self.update(developer_id: self.id) if self.developer
  	
  end

end
