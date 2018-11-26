class Cult
  attr_reader :name, :founding_year
  attr_accessor :location, :slogan
  @@all = []

  def initialize(name, founding_year, location, slogan)
    @name = name
    @founding_year = founding_year
    @location = location
    @slogan = slogan
    @@all << self
  end

  def self.all
    @@all
  end

  def blood_oaths
    BloodOath.all.select do |bloodoath|
      bloodoath.cult == self
    end
  end

  def followers
    self.blood_oaths.map do |bloodoath|
      bloodoath.follower
    end
  end

  def cult_population
    self.followers.length
  end

  def recruit_follower(follower) #instance of follower
    self.followers << follower
  end

  def self.find_by_name(name)
    self.all.find do |cult|
      cult.name == name
    end
  end

    def self.find_by_location(location)
      self.all.select do |cult|
        cult.location == location
      end
    end

    def self.find_by_founding_year(num)
      self.all.select do |cult|
        cult.founding_year == num
      end
    end

    def average_age
      sum = 0
      self.followers.each do |follower|
        sum += follower.age
      end
      (sum / self.cult_population).to_f
    end

    def my_followers_mottos
      self.followers.each do |follower|
        puts "#{follower.life_motto}"
      end
    end

    def self.least_popular
      self.all.sort {|a,b| a.cult_population <=> b.cult_population}[0]
    end

    def self.locations
      self.all.map do |cult|
        cult.location
      end
    end

    def self.most_common_location
      self.locations.group_by(&:to_s).values.max_by(&:size)[0]  #returns most common location 
    end

    end
