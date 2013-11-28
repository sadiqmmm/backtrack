class Project < ActiveRecord::Base
	has_many :baclinks, dependent: :destroy
	
	validates :name, :status, presence: true
	validates :name, uniqueness: true

end
