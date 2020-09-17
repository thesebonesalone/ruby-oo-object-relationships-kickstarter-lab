class Project
    @@all = []
    attr_reader :title
    def initialize(title)
        
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers
        ProjectBacker.all.select{|v| v.project == self}.map {|v| v.backer}
    end



end