using DifferentialEquations

function lorenz!(du, u, p, t)
	a = p
	du[1] = u[2]
	du[2] = -a*u[1]
end

const x = 0.2
const y = - 0.2
u0 = [x, y]

p = (1.2)
tspan = (0.0, 55.0)
problem1 = ODEProblem(lorenz!, u0, tspan, p)
sol1 = solve(problem1, dtmax=0.05)

using Plots; gr()

plot(sol1)
savefig("lab4_1_jl.png")

plot(sol1, vars=(2,1))
savefig("lab4_1_jl_phase.png")

