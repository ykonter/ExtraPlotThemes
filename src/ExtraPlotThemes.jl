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
end

# set_theme()


end # module
