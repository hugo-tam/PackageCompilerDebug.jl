using PackageCompilerDebug
@show plot_x_square = plot_dataframe("$(dirname(@__DIR__))/compiled/test.svg", collect(1:10), collect(1:10) .^ 2)
