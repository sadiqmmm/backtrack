class Backlink < ActiveRecord::Base
	validates :project, :project_url, :backlink_url, :method, :published_at, presence: true
end
