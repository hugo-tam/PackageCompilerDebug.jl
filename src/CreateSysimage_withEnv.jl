# create a new environment folder
env_path = "$(dirname(dirname(@__DIR__)))/NewSysImageEnv"
mkpath(env_path)

# add the `PackageCompilerDebug` package to the `NewSysImageEnv` project
Pkg.activate(env_path)
Pkg.add(PackageSpec(path="$(dirname(@__DIR__))", rev="master"))

# create a system image
using PackageCompiler
mkpath("$(dirname(@__DIR__))/compiled")
create_sysimage(:PackageCompilerDebug, sysimage_path="$(dirname(@__DIR__))/compiled/JuliaSimulatorDebug.so", precompile_execution_file="$(@__DIR__)/CreateSysimage_PrecompileExe.jl")
