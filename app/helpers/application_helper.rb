module ApplicationHelper

	def full_title(page_title)
		base_title = "Remember"
		page_title.empty? ?  base_title : "#{base_title} | #{page_title}"
	end

  def format_date(date)
    if date != nil
    	date.strftime("%B %d, %Y")
    end
  end

  def format_date_time(date_time)
    if date_time != nil
    	date_time.strftime("%B %d, %Y at %I:%M%p")
    end
  end

end
