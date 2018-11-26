class BloodOath
  attr_reader :follower, :cult, :initiation_date
  @@all = []

  def initialize(follower, cult, initiation_date)
    @follower = follower
    @cult = cult
    @initiation_date = initiation_date
    @@all << self
  end

  def self.all
    @@all
  end

  def self.first_oath
    self.all.sort {|a,b| a.initiation_date <=> b.initiation_date}[0].follower 
  end


end
