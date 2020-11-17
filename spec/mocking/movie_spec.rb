class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    'I Love you, baby'
  end

  def fall_off_leader
    'Call my agent! No way!'
  end

  def light_of_fire
    false
  end
end

class Movie
  attr_accessor :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_leader
      actor.light_of_fire
    end
  end
end

actor = Actor.new('Brad Pitt')
movie = Movie.new(actor)
movie.start_shooting