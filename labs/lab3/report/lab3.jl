using Plots
using DifferentialEquations

function one(du, u, p, t)
	du[1] = - 0.32*u[1] - 0.74*u[2] + 2*sin(t)
	du[2] = - 0.44*u[1] - 0.52*u[2] + 2*cos(t)
end

function two(du, u, p, t)
	du[1] = - 0.39*u[1] - 0.84*u[2] + sin(2*t)
	du[2] = (- 0.42*u[1] - 0.49)*u[2] + cos(2*t)
end

const people = Float64[21050, 8900]
const prom1 = [0.0, 3.0]
const prom2 = [0.0, 0.0007]

problem1 = ODEProblem(one, people, prom1)
problem2 = ODEProblem(two, people, prom2)

sol1 = solve(problem1, dtmax=0.1)
sol2 = solve(problem2, dtmax=0.000001)

A1 = [u[1] for u in sol1.u]
A2 = [u[2] for u in sol1.u]
A3 = [u[1] for u in sol2.u]
A4 = [u[2] for u in sol2.u]
T1 = [t for t in sol1.t]
T2 = [t for t in sol2.t]

plt1 = plot(dpi = 300, legend = true, bg =:white)
plot!(plt1, xlabel="Время", ylabel="Численность", title="Модель боевых действий случай 1")
plot!(plt1, T1, A1, label="Численность армии X", color =:red)
plot!(plt1, T1, A2, label="Численность армии Y", color =:green)
savefig(plt1, "lab3_1.png")

plt2 = plot(dpi = 1200, legend = true, bg =:white)
plot!(plt2, xlabel="Время", ylabel="Численность", title="Модель боевых действий случай 2")
plot!(plt2, T2, A3, label="Численность армии X", color =:red)
plot!(plt2, T2, A4, label="Численность армии Y", color =:green)
savefig(plt2, "lab3_2.png")