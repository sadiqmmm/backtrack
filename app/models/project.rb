class Project < ActiveRecord::Base
	has_many :backlinks, dependent: :destroy
	
	validates :name, :status, presence: true
	validates :name, uniqueness: true

end
