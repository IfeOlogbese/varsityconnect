class Post
  include Mongoid::Document
  field :attachment, type: String
  field :content, type: String
  belongs_to :user
end
