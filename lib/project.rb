require 'pry'

class Project

    attr_reader :title

    @@all = []

    # ~~ CLASS METHODS ~~ #

    def self.all
        @@all
    end

    # ~~ INSTANCE METHODS ~~ #

    def initialize(title)
        @title = title
        self.save
    end

    def save
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select {|obj| obj.project == self}.map {|obj| obj.backer}
    end
end