using PackageCompilerDebug
plot_something("$(dirname(@__DIR__))/compiled/test.svg", collect(1:10), collect(1:10) .^ 2)
