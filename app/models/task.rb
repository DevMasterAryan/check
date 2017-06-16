class Task < ApplicationRecord
	before_create :checkCreatedProjects

	belongs_to :owner,->{where(project_owner: true)}, class_name: "User"
	belongs_to :project



	private
	def checkCreatedProjects
		created_project = User.find_by(id: owner_id).projects.where(id: self.project_id)
	 	if created_project
          raise.Expection("project is not created by this user")	 	
	 	end
	 end 
end
