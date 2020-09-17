class Backer
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed_projects
        ProjectBacker.all.select{|v| v.backer == self}.map {|v| v.project}
        
    end


end
