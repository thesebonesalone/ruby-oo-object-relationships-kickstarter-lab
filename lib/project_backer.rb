

class ProjectBacker
    @@all = []
    attr_reader :project, :backer
    def initialize(project, backer)
        @backer = backer
        @project = project
        
        @@all << self

    end
    def self.all
        @@all
    end



end