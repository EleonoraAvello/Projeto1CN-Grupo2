using Plots
gr(size=(1.5 * 600, 1.5 * 400))

"""
1° Montar gráficos com todas as informações do mês de julho
"""
#plotando os gráficos
function graficos_julho()
    #preenchendo os vetores com as informações de julho
    dias_julho = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 27, 28, 29, 30, 31]
    novos_casos_julho = [345, 434, 411, 119, 348, 695, 256, 640, 418, 454, 367, 184, 591, 233, 717, 768, 465, 468, 307, 537, 467, 662, 640, 720, 364, 295, 392, 411, 496, 699]
    novos_obitos_julho = [4, 15, 5, 10, 7, 6, 11, 10, 10, 7, 9, 11, 14, 20, 12, 11, 13, 13, 14, 19, 18, 17, 18, 22, 16, 15, 11, 13, 20, 24]
    confirmados_julho = [5523, 5957, 6368, 6487, 6835, 7530, 7786, 8425, 8844, 9298, 9665, 9849, 10440, 10673, 11390, 12158, 12623, 13091, 13398, 13935, 14402, 15064, 15704, 16424, 16788, 17328, 17720, 18131, 18627, 19326]
    obitos_julho = [152, 167, 172, 182, 189, 195, 206, 216, 226, 233, 242, 253, 267, 287, 299, 310, 323, 336, 350, 369, 387, 404, 422, 444, 460, 480, 491, 504, 524, 548]

    dias_julho2 = [2, 7, 11, 12, 13, 16, 18, 19, 20, 21, 22, 23, 24, 25, 27, 28, 29, 30, 31]
    recuperados_julho = [2909, 4145, 5883, 5735, 5784, 6717, 7134, 7343, 7710, 7915, 8275, 8341, 8407, 8533, 10334, 10944, 11533, 12413, 12991]

    f(x) = -0.2321 * x^3 + 12.6913 * x^2 + 275.1272 * x + 5329.4509 #Aproximação de função - Casos confirmados até julho 
    F(x) = -0.0067 * x^3 + 0.4968 * x^2 + 3.4556 * x + 156.5620 #Aproximação de função - Óbitos até julho 
    g(x) = 0.7263 * x^3 - 30.2455 * x^2 + 607.0170 * x + 1616.3719 #Aproximação de função - Recuperados até julho 
    h(x) = ℯ^(5.3849 + 0.0143 * x) #Aproximação de função - Novos casos em julho 
    w = range(0, 31, length=100)

    #plotando os gráficos numa grade 2x2
    layout = grid(2, 2)
    p = plot(layout=layout, leg=false)

    #Plotando as funções 
    plot!(p[1], f, w, c=:black, lw=2)
    plot!(p[2], F, w, c=:black, lw=2)
    plot!(p[3], g, w, c=:black, lw=2)
    plot!(p[4], h, w, c=:black, lw=2)

    scatter!(p[1], dias_julho, confirmados_julho, title = "Casos confirmados até julho", xlabel = "dias de julho", ylabel = "confirmados", c=:orange)
    scatter!(p[2], dias_julho, obitos_julho, title = "Óbitos até julho", xlabel = "dias de julho", ylabel = "óbitos", c=:orange)
    scatter!(p[3], dias_julho2, recuperados_julho, title = "Recuperados até julho", xlabel = "dias de julho", ylabel = "recuperados", c=:orange)
    scatter!(p[4], dias_julho, novos_casos_julho, title = "Novos casos em julho", xlabel = "dias de julho", ylabel = "novos casos", c=:orange)

    #salvando a imagem com os gráficos 
    png(p, "graficos_julho")
end
graficos_julho()

"""
2º Montar gráficos com todas as informações do mês de novembro
"""
#preenchendo os vetores com as informações de setembro
function graficos_novembro()
    dias_novembro = [3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 14, 16, 17, 18, 19, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
    novos_casos_novembro = [896, 331, 407, 436, 473, 536, 477, 736, 703, 749, 715, 1508, 879, 914, 1381, 1380, 984, 1339, 1101, 1597, 1604, 1571, 1521, 970, 1254]
    novos_obitos_novembro = [10, 6, 8, 8, 9, 7, 5, 5, 10, 5, 6, 10, 13, 11, 9, 8, 7, 10, 11, 11, 18, 16, 17, 18, 16]
    confirmados_novembro = [53785, 54116, 54523, 54959, 55432, 55968, 56445, 57181, 57884, 58663, 59348, 60856, 61735, 62649, 64030, 66819, 67803, 69142, 70243, 71840, 73444, 75015, 76536, 77506, 78760]
    ativos_novembro = [3965, 3935, 4012, 4131, 4236, 4395, 4431, 4763, 5004, 5306, 5705, 6849, 7449, 7714, 8415, 9637, 10224, 11323, 11500, 12139, 12784, 12973, 13320, 13582, 13829]
    obitos_novembro = [1490, 1496, 1504, 1512, 1521, 1528, 1533, 1538, 1548, 1553, 1559, 1569, 1582, 1593, 1602, 1621, 1628, 1638, 1649, 1660, 1678, 1694, 1771, 1729, 1745]
    
    dias_novembro2 = [3, 4, 5, 6, 7, 10, 11, 12, 13, 14, 16, 17, 18, 19, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
    recuperados_novembro = [48330, 48685, 49007, 49316, 49675, 50481, 50880, 51331, 51774, 52084, 52438, 52704, 53342, 54013, 55561, 55951, 56272, 57094, 58041, 58982, 60348, 61505, 62195, 63186]
    
    f(x) = -0.2482 * x^3 + 40.2731 * x^2  - 149.7415 * x + 54212.1593 #Aproximação de função - Casos confirmados até novembro 
    F(x) = 0.0123 * x^3 - 0.3454 * x^2 + 9.0592 * x + 1466.1374 #Aproximação de função - Óbitos até novembro 
    g(x) = 0.7414 * x^3 - 19.8918 * x^2 + 477.4610 * x + 47048.1630 #Aproximação de função - Recuperados até novembro 
    h(x) = -0.2966 * x^3 + 14.1247 * x^2 - 148.0600 * x + 934.1163 #Aproximação de função - Novos casos em novembro
    x = range(0, 30, length=100)

    #plotando os gráficos numa grade 2x2
    layout = grid(2, 2)
    p = plot(layout=layout, leg=false)

    #Plotando as funções 
    plot!(p[1], f, x, c=:black, lw=2)
    plot!(p[2], F, x, c=:black, lw=2)
    plot!(p[3], g, x, c=:black, lw=2)
    plot!(p[4], h, x, c=:black, lw=2)

    scatter!(p[1], dias_novembro, confirmados_novembro, title = "Casos confirmados até novembro", xlabel = "dias de novembro", ylabel = "confirmados", c=:cyan)
    scatter!(p[2], dias_novembro, obitos_novembro, title = "Óbitos até novembro", xlabel = "dias de novembro", ylabel = "óbitos", c=:cyan)
    scatter!(p[3], dias_novembro2, recuperados_novembro, title = "Recuperados até novembro", xlabel = "dias de novembro", ylabel = "recuperados", c=:cyan)
    scatter!(p[4], dias_novembro, novos_casos_novembro, title = "Novos casos em novembro", xlabel = "dias de novembro", ylabel = "novos casos", c=:cyan)


    #salvando a imagem com os gráficos 
    png(p, "graficos_novembro")
end
graficos_novembro()

"""
Método de Euler 
"""
#Função para o Método de Euler a ser utilizado para a aproximação do Modelo SIR
function metodo_de_euler(x0, y0 :: Vector, f, xN, N) 
    h = (xN - x0) / N
    m = length(y0)
    y = zeros(m, N + 1)
    y[:,1] = y0
    x = range(x0, xN, length = N + 1)
    for k = 1:N
        y[:,k+1] = y[:,k] + h * f(x[k], y[:,k])
    end
    return x, y
end 

"""
Modelo SIR (arrumar)
"""
T = 1_752_000 #Total de habitantes na cidade de Curitiba 
β = 0.5 #Taxa de crescimento 
γ = 0.1 #Taxa de recuperação

# Temos o vetor y = [S, I, R] onde S é o número de suscetíveis, I é o número de Infectados e R o número de Recuperados. 
# Com isso, o y[1] abaixo se refere aos Suscetíveis e o y[2] se refere aos Infectados
# A função é composta pelas equações que temos através do Modelo SIR
f(x, y) = [-β / T * y[2] * y[1];
            β / T * y[2] * y[1] - γ * y[2];
            γ * y[2]]

x0 = 0.0 #Onde se inicia, dado pelo tempo
y0 = [T - 100; 100.0; 0.0] #Onde se inicia, número dos casos 
xf = 30.0 #Onde termina, ou seja, o tempo final
N = 100 #Quantos passos a função dará 

x, y = metodo_de_euler(x0, y0, f, xf, N)

#Plotando os gráficos de Suscetíveis, Infectados e Recuperados
plot(x, y[1,:], c=:blue, lab="S", legend =:right)
plot!(x, y[2,:], c=:green, lab="I")
plot!(x, y[3,:], c=:red, lab="R")

"""
Método de Runge Kutta
"""
#Função para o Método Runge Kutta de quarta ordem a ser utilizado para a aproximação do Modelo SIR
function metodo_runge_kutta(x0, y0 :: Vector, f, xN, N) 
    h = (xN - x0) / N
    m = length(y0)
    y = zeros(m, N + 1)
    y[:,1] = y0
    x = range(x0, xN, length=N+1)
    for k = 1:N
        k1 = f(x[k], y[:,k])
        k2 = f(x[k] + 0.5, y[:,k] + h * k1/ 2)
        k3 = f(x[k] + 0.5, y[:,k] + h * k2/ 2)
        k4 = f(x[k+1], y[:,k] + h * k3)
        y[:,k+1] = y[:,k] + h * (k1 + 2k2 + 2k3 + k4) / 6
    end
    return x, y
end

"""
Modelo SIR (arrumar)
"""

T = 1_752_000 #Total de habitantes na cidade de Curitiba 
β = 1.2 #Taxa de crescimento 
γ = 1/14 #Taxa de recuperação

# Temos o vetor y = [S, I, R] onde S é o número de suscetíveis, I é o número de Infectados e R o número de Recuperados. 
# Com isso, o y[1] abaixo se refere aos Suscetíveis e o y[2] se refere aos Infectados
# A função é composta pelas equações que temos através do Modelo SIR
F(x, y) = [-β / T * y[2] * y[1];
            β / T * y[2] * y[1] - γ * y[2];
            γ * y[2]]

x0 = 0.0 #Onde se inicia, dado pelo tempo
y0 = [T - 3965.0; 3965.0; 0.0] #Onde se inicia, número dos casos 
xf = 30.0 #Onde termina, ou seja, o tempo final
N = 1000#Quantos passos a função dará 

x, y = metodo_runge_kutta(x0, y0, F, xf, N)

#Plotando os gráficos de Suscetíveis, Infectados e Recuperados
plot(x, y[1,:], c=:blue, lab="S", legend =:right)
plot!(x, y[2,:], c=:green, lab="I")
plot!(x, y[3,:], c=:red, lab="R")
