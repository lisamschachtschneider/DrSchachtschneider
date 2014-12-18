class Project < ActiveRecord::Base
  has_many :tags, as: :taggable
  delegates :tag, :to => :taggable, prefix: true
  def taggable_post
    @post.taggable_post
  end
end
