# Example code to recreate issue with PackageCompiler.jl

## Purpose

This PackageCompilerDebug package has dependency of [Gadfly.jl](https://github.com/GiovineItalia/Gadfly.jl) and [DataFrames.jl](https://github.com/JuliaData/DataFrames.jl).  It seems PackageCompiler has an issue compiling a system image for packages such as PackageCompilerDebug.jl that uses Gadfly to plot with a DataFrame object.

## Create system image

The `src/CreateSysimage.jl` script should create an environment called NewSysImageEnv that adds PackageCompilerDebug in its dependency.  The .so file will be created by default in a `compiled` subfolder

## Running the code

The `src/CreateSysimage_PrecompileExe.jl` can be executed for both pre-compilation and test run using the compiled system image.
