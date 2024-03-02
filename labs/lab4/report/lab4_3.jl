using DifferentialEquations

function lorenz!(du, u, p, t)
	a, b = p
	du[1] = u[2]
	du[2] = -a*du[1] - b*u[1] + 2.2*cos(0.6*t)
end

const x = 0.2
const y = - 0.2
u0 = [x, y]

p = (sqrt(7.4), 7.5)
tspan = (0.0, 55.0)
problem1 = ODEProblem(lorenz!, u0, tspan, p)
sol1 = solve(problem1, dtmax=0.05)

using Plots; gr()

plot(sol1)
savefig("lab4_3_jl.png")

plot(sol1, vars=(2,1))
savefig("lab4_3_jl_phase.png")

