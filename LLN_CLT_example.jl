using InstantiateFromURL
github_project("QuantEcon/quantecon-notebooks-julia",version = "0.5.0")

using LinearAlgebra, Statistics,Distributions
gr(fmt = :png, size = (1000, 1000))

distributions = [TDist(10),Beta(2,2),Gamma(5,2),Poisson(4),LogNormal(0.5),
                Exponential(1)]

Random.seed!(0)
ksl(Normal())

simulation(distributions[3],200,1000)
