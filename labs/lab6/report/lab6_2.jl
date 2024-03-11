using DifferentialEquations
using Plots

N = 12800
I0 = 180
R0 = 58
S0 = N - I0 - R0
a = 0.4
b = 0.1

function ode_fn(du, u, p, t)
	S, I, R = u
	du[1] = -a*u[1]
	du[2] = a*u[1] - b*u[2]
	du[3] = b*I
	
end

v0 = [S0, I0, R0]
tspan = (0.0, 120.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax=0.05)
S = [u[1] for u in sol.u]
I = [u[2] for u in sol.u]
R = [u[3] for u in sol.u]
T = [t for t in sol.t]

plt = plot(dpi=600, legend = :topright)
plot!(plt, T, S, label = "Восприимчивые особи" ,color=:green)
plot!(plt, T, I, label = "Инфицированные особи" ,color=:red)
plot!(plt, T, R, label = "Особи с иммунитетом" ,color=:blue)
savefig(plt,"lab6_2_jl.png")

