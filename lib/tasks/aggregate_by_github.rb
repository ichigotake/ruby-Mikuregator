
class Tasks::AggregateByGithub

  def self.execute
    response = Aggregate::GithubApiRequest.new.search
    items = response[:items]
    begin
      items.each do |repository|
        save!(repository)
      end
    end while response.has_next_page? && (items = response.next_page[:items])
  end

  def self.save!(repository)
    unless Repository.aggregate?(repository)
      return
    end

    Repository.update!({
                           :html_url => repository[:html_url],
                           :full_name => repository[:full_name],
                           :description => repository[:description],
                           :owner_author_id => repository[:owner][:id],
                           :created_at => repository[:created_at],
                           :updated_at => repository[:updated_at],
                       })

    Author.update!({
                       :owner_id => repository[:owner][:id],
                       :name => repository[:owner][:login],
                       :avatar_url => repository[:owner][:avatar_url],
                   })
  end

end
