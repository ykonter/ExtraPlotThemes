using Revise
using Plots

# include("../src/ExtraPlotThemes.jl")
using ExtraPlotThemes

theme(:matlab)

x=range(0, 2π, 100)
ω=range(1, 6)'

plot(x, sin.(x .* ω), labels=string.(ω), legendtitle="legendtitle", title="title of plot", xlabel="xlabel of plot", ylabel="ylabel of plot")
