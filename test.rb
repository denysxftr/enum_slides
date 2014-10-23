require 'pry'
class Train
  Car = Struct.new(:humans)
  include Enumerable

  def each
    k = 0
    until k == @cars.size
      yield(@cars[k])
      k += 1
    end
    self
  end

  private

  def initialize(length)
    @cars = length.times.map { Car.new(rand(50) ) }
  end
end

t1 = Train.new(5)

p(t1.map do |t|
  t.humans
end)