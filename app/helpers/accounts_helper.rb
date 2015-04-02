module AccountsHelper
  def text_access_level(access_level)
    if access_level == 1
	  return "Administrator"
    elsif access_level == 2
      return "Mechanic"
    elsif access_level == 3
      return "User"
    else
      return "Undefined"
    end
  end
end
