# load a couple of packages
using Pkg

Pkg.add("Distributions")
Pkg.add("GLM")
Pkg.add("DataFrames")
Pkg.add("DataArrays")
Pkg.add("Taro")


using Distributions
using GLM
using DataFrames
using DataArrays
# load Taro - Pkg to read Excel Data
using Taro
Taro.init()
 
# get data
path = "https://economictheoryblog.files.wordpress.com/2016/08/data.xlsx"
data = Taro.readxl(download(path), "data", "A1:C357")
data = deleterows!(data,find(isna(data[:,1])|isna(data[:,2])))
y = convert(DataArrays.DataArray{Float64,1},data[:,1])
x = convert(DataArrays.DataArray{Float64,1},data[:,2])
 
linreg(y,x)