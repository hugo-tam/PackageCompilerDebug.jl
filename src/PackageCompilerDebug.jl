module PackageCompilerDebug

using JuMP, Ipopt

function ipopt_solve_max_x(x²_bound::Float64)
    model = Model(optimizer_with_attributes(Ipopt.Optimizer))
    @variable(model, x)
    @objective(model, Max, x)
    @constraint(model, constr1, x * x <= x²_bound)
    optimize!(model)
    return value(x)
end

export ipopt_solve_max_x

end # module
