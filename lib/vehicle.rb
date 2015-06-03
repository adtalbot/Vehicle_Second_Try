class Vehicle
  @@vehicles = []
  
  define_method(:initialize) do |make, model, year|
    @make = make
    @model = model
    @year = year
  end
  define_singleton_method(:all) do
    @@vehicles
  end
end