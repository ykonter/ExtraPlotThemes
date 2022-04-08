module ExtraPlotThemes

using PlotThemes
using PlotThemes:PlotTheme
using PlotUtils
using Glob
export add_theme, theme_palette

# add themes
include("matlab.jl")

# add themes in .julia plotthemes folder
function __init__()  # see if executed at runtime
themedir = homedir() * "/.julia/plot_themes"
if isdir(themedir)
    themefiles = glob(themedir * "/*.jl")
    [include(themefile) for themefile in themefiles]  # load all jl files in themedir
end

# println(keys(PlotThemes._themes))
PlotThemes._themes[:matlab] = _matlab  # it does work here though
# println(keys(PlotThemes._themes))
end

# set_theme()


end # module
