require 'open-uri'
require 'github_api'

class Tasks::AggregateByGist

  def self.execute

    search_url = "https://gist.github.com/search?q=mikutter+OR+%22%E3%81%BF%E3%81%8F%E3%81%A3%E3%81%9F%22";
    charset = nil
    html = open(search_url) do |f|
      charset = f.charset
      f.read
    end
    gist = Aggregate::GistApiRequest.new
    Nokogiri::HTML.parse(html, nil, charset).css('.gist-item').each do |e|
      full_name = e.css('.creator a')[1].attr('href')
      id = full_name.split('/')[2]
      repository = gist.get(id)
      if repository[:forks].present?
        next
      end

      update!(repository)
    end

  end

  def self.update!(repository)
    Repository.update!({
                           :html_url => repository[:html_url],
                           :full_name => "#{repository[:owner][:login]}/#{repository[:id]}",
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
