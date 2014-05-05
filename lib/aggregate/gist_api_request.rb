require 'github_api'

class Aggregate::GistApiRequest

  def initialize()
    @github = Github.new
  end

  def get(gist_id)
    @github.gists.get(:gist_id => gist_id)
  end

end
