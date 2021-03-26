class Show 
    attr_accessor :name, :genres, :runtime
    @@all = []
    def initialize(name, genres, runtime)
        @name = name 
        @genres = genres 
        @runtime = runtime
        @@all << self
    end

    def self.all 
        @@all 
    end
end