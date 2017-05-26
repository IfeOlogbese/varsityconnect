class Post
  include Mongoid::Document
  field :attachment, type: String
  field :content, type: String
  embedded_in :user

  mount_uploader :attachment, AvatarUploader
end
