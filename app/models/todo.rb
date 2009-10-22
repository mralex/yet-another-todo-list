class Todo < ActiveRecord::Base
  attr_accessible :title, :description, :done

  def checked
    if done:
      "checked"
    end
  end
end
