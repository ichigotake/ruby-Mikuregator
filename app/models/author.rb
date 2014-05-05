class Author < ActiveRecord::Base

  has_many :repositories

  #TODO: 引数のバリデーション
  def self.update!(params)
    author = Author.find_by(:first, :conditions => ["owner_id = ?", params[:owner_id]])
    if author.nil?
      author = Author.new
    end
    author.owner_id = params[:owner_id]
    author.name = params[:name]
    author.avatar_url = params[:avatar_url]
    author.save!
  end

end
