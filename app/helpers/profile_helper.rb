module ProfileHelper

  
# Return true if hiding the edit links for specs,books, groups etc
  def hide_edit_links?
    not @hide_edit_links.nil?
  end

  # Return the user's profile URL.
  def profile_for(user)
    profile_path(:screen_name => user.screen_name)
  end


end
