module ApplicationHelper
  def fix_url(str)
    str.starts_with?('http://') ? str : 'http://' + str
  end

  def display_datetime(dt)
    dt.strftime("%B %d, %Y %l:%M%P %Z")
  end

  def dog_info(dog)
    "#{dog.name} is #{dog.height_in_inches} inches tall and weighs #{dog.weight_in_lbs} pounds."
  end
end
