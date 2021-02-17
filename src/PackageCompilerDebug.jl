module PackageCompilerDebug

using Gadfly, DataFrames

function plot_dataframe(df::DataFrame)
    return Gadfly.plot(df, x = :x, y = :y, Geom.point)
end

plot_dataframe(xs::Vector{T}, ys::Vector{T}) where T <: Number = plot_dataframe(DataFrame(x = xs, y = ys))

export plot_dataframe

end # module
