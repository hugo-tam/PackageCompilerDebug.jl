# create MyApp
app_path = "$(dirname(dirname(@__DIR__)))/MyApp"
cd(dirname(app_path))
Pkg.generate("MyApp")

# create the MyApp module script
myapp_src = [
    "module MyApp",
    "using PackageCompilerDebug",
    "function julia_main()",
    "  real_main()",
    "  return 0",
    "end",
    "function real_main()",
    "  x = length(ARGS) == 0 ? Float64(4) : parse(Float64, ARGS[1])",
    "  @show ipopt_solve_max_x(x)",
    "end",
    "end  # module",
    ""
]
write("$app_path/src/MyApp.jl", join(myapp_src, "\r\n"))

# add the `PackageCompilerDebug` package to the `MyApp` package
Pkg.activate(app_path)
Pkg.add(PackageSpec(path="$(dirname(@__DIR__))", rev="master"))

using PackageCompiler
create_app(app_path, "$(dirname(app_path))/MyAppCompiled", precompile_execution_file="$(@__DIR__)/CreateApp_PrecompileExe.jl")
