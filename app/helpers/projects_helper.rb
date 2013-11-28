module ProjectsHelper

	def project_label(project_label)

		case project_label
		when "New"
			"label-default"

		when "In-Progress"
			"label-info"
		
		when "Review"
			"label-warning"

	 	when "On-Hold"
			"label-important"
				
		when "Completed"
			"label-success"
		else
			"label-default"
		end
	end
end