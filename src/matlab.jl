
const matlab_palette = [
    colorant"#0072BD",
    colorant"#D95319",
    colorant"#EDB120",
    colorant"#7E2F8E",
    colorant"#77AC30",
    colorant"#4DBEEE",
    colorant"#A2142F"
]

const _matlab = PlotTheme(Dict([
    :background => :white,
    :framestyle => :box,
    :grid => true,
    :gridalpha => 0.8,
    :linewidth => 2,
    :markerstrokewidth => 0,
    :fontfamily => "Computer Modern",
    :colorgradient => :viridis,
    :guidefontsize => 12,
    :titlefontsize => 12,
    :tickfontsize => 8,
    :palette => matlab_palette,
    :minorgrid => true,
    :minorticks => 5,
    :gridlinewidth => 0.7,
    :minorgridalpha => 0.06])
)

add_theme(:matlab, _matlab)  # always add this line to add theme to library