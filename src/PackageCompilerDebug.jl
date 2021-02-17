module PackageCompilerDebug

using Gadfly, DataFrames

function plot_dataframe(full_svg_path::String, df::DataFrame)
    return draw(SVG(full_svg_path), Gadfly.plot(df, x = :x, y = :y, Geom.point))
end

plot_dataframe(full_svg_path::String, xs::Vector{T}, ys::Vector{T}) where T <: Number = plot_dataframe(full_svg_path, DataFrame(x = xs, y = ys))

export plot_dataframe

end # module
