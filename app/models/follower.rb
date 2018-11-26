class Follower
  attr_reader :name
  attr_accessor :age, :life_motto
  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  def blood_oaths
    BloodOath.all.select do |bloodoath|
      bloodoath.follower == self
    end
  end

  def cults
    self.blood_oaths.map do |bloodoath|
      bloodoath.cult
    end
  end

  def join_cult(cult) #instance of cult
    cult.followers << self
  end

  def self.of_a_certain_age(num)
    self.all.select do |follower|
      follower.age >= num
    end
  end

  def my_cults_slogans
    self.cults.each do |cult|
      puts "#{cult.slogan}"
    end
  end

  def self.most_active
    self.all.sort {|a,b| b.cults.length <=> a.cults.length}[0]
  end

  def self.top_ten
    self.all.sort {|a,b| b.cults.length <=> a.cults.length}[0..9]
  end


end
