module PackageCompilerDebug

using Gadfly

function plot_something(full_svg_path::String, xs::Vector{T}, ys::Vector{T}) where T <: Number
    return draw(SVG(full_svg_path), Gadfly.plot(x = xs, y = ys, Geom.point))
end

export plot_something

end # module
