#gem "rumale"

require 'rumale'

x = [[1, 2], [2, 3], [3, 4], [4, 5]]
y = [1, 2, 3, 4]
model = Rumale::LinearModel::LinearRegression.new
model.fit(x, y)
predictions = model.predict(x)
# Convert Numo::DFloat to a Ruby array
predictions_array = predictions.to_a
puts "Predictions: #{predictions_array}"