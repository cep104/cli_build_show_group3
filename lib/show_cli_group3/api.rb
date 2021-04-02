class API 
    def self.get_data 
       response = RestClient.get('http://api.tvmaze.com/search/shows?q=girls')
       shows = JSON.parse(response)
       shows.each do |show|
        new_show = show['show']
        # name, genres, runtime
        # binding.pry
        Show.new(new_show)
        # binding.pry
       end
        binding.pry
    end
end