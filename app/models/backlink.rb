class Backlink < ActiveRecord::Base
	belongs_to :project
	validates :project, :project_url, :backlink_url, :method, :published_at, presence: true
end
