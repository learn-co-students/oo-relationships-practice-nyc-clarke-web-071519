class User

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    # creates a new pledge by this user for a specific project for a specific pledge amount
    def make_pledge(project, pledge_amount)
        Pledge.new(self, project, pledge_amount)
    end

    def make_project(project_name, pledge_goal)
        Project.new(project_name, self, pledge_goal)
    end

    #   .highest_pledge returns the user who has made the highest pledge
    def self.highest_pledge
        Pledge.largest_pledge.backer
    end

    #   #pledges returns an array of the pledges that a user has made
    def pledges
        Pledge.all.select {|pledge| pledge.backer == self}
    end

    #   #pledge_count returns the number of pledges that a user has made
    def pledge_count
        pledges.count
    end

    #   .multi_pledger returns all users who have pledged to multiple projects
    def self.multi_pledger
        self.all.select {|user| user.pledge_count > 1}
    end

    #   #projects_owned returns an array of all the projects a user has created
    def projects_owned
        Project.all.select {|project| project.owner == self}
    end

    #   .project_creator returns all users who have created a project
    def self.project_creator
        self.all.select {|user| user.projects_owned.length > 0}
    end

end