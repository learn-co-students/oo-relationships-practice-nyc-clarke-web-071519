class Pledge

    #   #project returns the project associated with a particular pledge
    #   #user returns the user associated with a particular pledge
    attr_reader :backer, :project, :pledge_amount

    @@all = []

    def initialize(backer, project, pledge_amount)
        @backer = backer
        @project = project
        @pledge_amount = pledge_amount

        @@all << self
    end

    def self.all
        @@all
    end

    def self.largest_pledge
        self.all.max_by {|pledge| pledge.pledge_amount}
    end

end