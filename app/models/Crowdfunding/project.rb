class Project

    attr_reader :name, :owner, :pledge_goal

    @@all = []

    def initialize(name, owner, pledge_goal)
        @name = name
        @owner = owner
        @pledge_goal = pledge_goal

        @@all << self
    end

    def self.all
        @@all
    end

    # returns an array of all the pledges for this project
    def pledges
        Pledge.all.select {|pledge| pledge.project == self}
    end

    #returns a unique array of all the users who have made pledges for this project
    def backers
        pledges.map {|pledge| pledge.backer}.uniq
    end

    #   .no_pledges returns all projects which have no pledges yet
    def self.no_pledges
        self.all.select {|project| project.pledges.length == 0}
    end

    def total_pledge_amount
        pledges.reduce(0) {|total, pledge| total + pledge.pledge_amount}
    end

    #   .above_goal returns all projects which have met or exceeded their pledge goal
    def self.above_goal
        self.all.select {|project| project}
    end

    #   .most_backers returns the project with the highest number of backers
    def self.most_backers
        self.all.max_by {|project| project.backers.length}
    end

end