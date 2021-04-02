class Show 
    attr_accessor :name, :genres, :runtime
    @@all = []
    def initialize(show_hash)
       show_hash.each do |key, value|
        self.send("#{key}=", value) if self.respond_to?("#{key}=")
       end
        save
    end
    
    def save 
        @@all << self 
    end

    def self.all 
        @@all 
    end
end