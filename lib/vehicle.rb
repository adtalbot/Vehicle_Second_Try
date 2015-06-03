class Vehicle
  @@vehicles = []
  
  define_method(:initialize) do |make, model, year|
    @make = make
    @model = model
    @year = year
  end
  define_method(:make) do
    @make
  end
  define_method(:model) do
    @model
  end
  define_method(:year) do
    @year
  end
  define_singleton_method(:all) do
    @@vehicles
  end
  define_method(:save) do
    @@vehicles.push(self)
  end
  define_singleton_method(:clear) do
    @@vehicles = []
  end
  define_method(:age) do
    current = Time.new(2015)
    vehicle_age = current.year() - @year 
  end 
  define_method(:worth_buying?) do
    american_cars = %w(GM, Ford, Buick)
    if american_cars.include?(@make) && @year >= 15
      true
    else
      false
    end
  end 
end