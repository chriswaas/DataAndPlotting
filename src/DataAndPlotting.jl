module DataAndPlotting

#Grid size
const ni = 30
const nj = 20

#Wave parameters
const ki = 3
const kj = 3

#i form 1...ni -> i-1 from 0...ni-1
#x from 0...1
index2coord(i, ni) = (i-1)/(ni-1)

#Set up standing wave
function initialize()
  arr = zeros(Float64, ni, nj)
  for j in 1:nj, i in 1:ni

    x = index2coord(i, ni)
    y = index2coord(j, nj)
    arr[i,j] = sin(2pi*ki*x)*sin(2pi*kj*y)
  end
end

end # module
