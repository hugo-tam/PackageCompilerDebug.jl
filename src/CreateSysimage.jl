Pkg.activate(dirname(@__DIR__))
using PackageCompiler
mkpath("$(dirname(@__DIR__))/compiled")
create_sysimage(:PackageCompilerDebug, sysimage_path="$(dirname(@__DIR__))/compiled/JuliaSimulatorDebug.so") # precompile_execution_file="$(@__DIR__)/CreateSysimage_PrecompileExe.jl"
