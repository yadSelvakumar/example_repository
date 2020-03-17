using InstantiateFromURL
github_project("QuantEcon/quantecon-notebooks-julia",version = "0.5.0")

using LinearAlgebra, Statistics
using Plots, Distributions, Random, Statistics
gr(fmt = :png, size = (1000, 1000))

function ksl(distribution,n=100)
    title = nameof(typeof(distribution))
    observations = rand(distribution,n)
    sample_means = cumsum(observations)./(1:n)
    μ = mean(distribution)
    plot(repeat((1:n)',2),
        [zeros(1,n);observations'],label="",color=:red, alpha=0.5)
    plot!(1:n,observations,color=:grey,markershape=:circle,alpha = 0.5,label="",linewidth=0)
    if !isnan(μ)
        hline!([μ],color=:black,linewidth=1.5,linestyle=:dash,grid=false,
        label=["Mean"])
    end
    plot!(1:n,sample_means,linewidth=3,alpha=0.6,color=:green,
        label="Sample mean")
    return plot!(title=title)
end
