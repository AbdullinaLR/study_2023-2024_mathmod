using DifferentialEquations
using Plots

x0 = 9
y0 = 19

a = 0.67
b = 0.067
c = 0.66
d = 0.065

function ode_fn(du, u, p, t)
	x, y = u
	du[1] = -a*u[1] + b*u[1] * u[2]
	du[2] = c*u[2] - d*u[1]* u[2]
end

v0 = [x0, y0]
tspan = (0.0, 60.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax=0.05)
X = [u[1] for u in sol.u]
Y = [u[2] for u in sol.u]
T = [t for t in sol.t]

plt = plot(dpi=300, legend = false)
plot!(plt, X, Y, color=:blue)
savefig(plt,"lab5_1_jl.png")

plt2 = plot(dpi=300, legend = true)
plot!(plt2, T, X, label = "Численность жертв" ,color=:red)

plot!(plt2, T, Y, label = "Численность хищников" ,color=:green)
savefig(plt2,"lab5_2_jl.png")

