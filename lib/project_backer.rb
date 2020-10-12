require 'pry'

class ProjectBacker

    attr_reader :project, :backer

    @@all = []

    # ~~ CLASS METHODS ~~ #

    def self.all
        @@all
    end

    # ~~ INSTANCE METHODS ~~ #
    
    def initialize(project, backer)
        @project, @backer = project, backer
        self.save
    end

    def save
        @@all << self
    end

end