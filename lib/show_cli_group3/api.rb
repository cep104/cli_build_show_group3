class API 
    def self.get_data 
       response = RestClient.get('http://api.tvmaze.com/search/shows?q=girls')
       shows = JSON.parse(response)
       shows.each do |show|
        new_show = show['show']
        # name, genres, runtime
        Show.new(new_show["name"], new_show["genres"], new_show["runtime"])
        # binding.pry
       end
        binding.pry
    end
end