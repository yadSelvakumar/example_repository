using StatsPlots
using LinearAlgebra, Statistics
using Plots, Distributions, Random, Statistics

function simulation(distribution,n,k)
    σ = std(distribution)
    μ = mean(distribution)
    y = rand(distribution,n,k)
    yBar = mean(y,dims=1)
    density(√n * (vec(yBar)-ones(k)*μ))
    return plot!(Normal(0,σ))
    return
end
