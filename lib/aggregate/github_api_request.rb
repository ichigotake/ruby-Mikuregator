class Aggregate::GithubApiRequest

  def initialize()
    @github = Github::Search.new auto_pagination: true
  end

  def search(page = 1)
    @github.repos({
                     :q => 'mikutter OR "みくった"',
                     :sort => 'desc',
                     :order => 'updated',
                     :per_page => 100,
                     :page => page,
                 })
  end

end