require 'pry'

class Backer

    attr_reader :name

    @@all = []

    # ~~ CLASS METHODS ~~ #

    def self.all
        @@all
    end

    # ~~ INSTANCE METHODS ~~ #

    def initialize(name)
        @name = name
        self.save
    end

    def save
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select {|obj| obj.backer == self}.map {|obj| obj.project}
    end

end