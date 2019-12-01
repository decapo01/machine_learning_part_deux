using Pkg
Pkg.add("Plots")
using Plots


plotly()

plot(rand(5,5),linewidth=2,title="My Plot")

# items = [1,32,4,5,56]

# otheres = []
# for item in items
#   prepend!(otheres, item + 2)
# end

# print(items)
# print(otheres)