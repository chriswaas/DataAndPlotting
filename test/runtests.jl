using DataAndPlotting
using Test
arr = initialize()
rm("/temp/array.h5", force=true)
output(arr, "/temp/array.h5")

arr2 = input("/temp/array.h5")

@test isequal(arr2, arr)
