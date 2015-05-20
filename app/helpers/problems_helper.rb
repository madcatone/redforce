module ProblemsHelper
	def render_tag_button_all()
  		#content_tag(link_to("Cons", cons_problems_path, :class => "btn btn-xs btn-success"))
  		link_to("All", problems_path, :class => "btn btn-xs btn-info")
  	end
  	def render_tag_button_cons()
  		link_to("Cons", cons_problems_path, :class => "btn btn-xs btn-success")
  	end
  	def render_tag_button_pros()
		link_to("Pros", pros_problems_path, :class => "btn btn-xs btn-warning")
	end
	def render_tag_button_spam()
		link_to("Spam", spam_problems_path, :class => "btn btn-xs btn-danger")
	end
end
