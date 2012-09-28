class Comment < ActiveRecord::Base
  belongs_to :mfnw
  attr_accessible :body, :mfnw_id, :user_name
end
