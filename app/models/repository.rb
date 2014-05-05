class Repository < ActiveRecord::Base

  belongs_to :authors

  enum host_type: [
      :github,
      :gist,
  ]

  #TODO: 引数のバリデーション
  def self.update!(params)
    item = Repository.find_by(:first, :conditions => ["full_name = ?", params[:full_name]])
    if item.nil?
      item = Repository.new
    end
    item.html_url = params[:html_url]
    item.repository_url = "https://github.com/#{params[:full_name]}"
    item.github!
    item.description = params[:description]
    item.owner_author_id = params[:owner_id]
    item.full_name = params[:full_name]
    if params[:created_at].present?
      item.created_at = params[:created_at]
    end
    if params[:updated_at].present?
      item.updated_at = params[:updated_at]
    end
    item.save
  end

  def aggregate?(params)

  end

  #TODO: みっくストアが親レポジトリの場合は収集したい( https://github.com/toshia/mikustore )
  def self.aggregate?(repository)
    !repository[:private] && !repository[:fork]
  end

end
