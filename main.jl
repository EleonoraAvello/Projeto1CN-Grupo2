using Plots
"""
1° Montar gráficos com todas as informações do mês de julho
"""
#plotando os gráficos
function graficos_julho()
    #preenchendo os vetores com as informações de julho
    dias_julho = 1 : 1 : 31
    novos_casos_julho = [345, 454, 411, 119, 348, 695, 0, 640, 418, 454, 367, 184, 591, 233, 717, 768, 465, 468, 307, 0, 0, 662, 640, 720, 364, 0, 295, 392, 411, 496, 699]
    novos_obitos_julho = [4, 15, 5, 10, 7, 6, 0, 10, 10, 7, 9, 11, 14, 20, 12, 11, 13, 13, 14, 0, 0, 17, 18, 22, 16, 0, 15, 11, 13, 20, 24]
    confirmados_julho = [5523, 5957, 6368, 6487, 6835, 7530, 0, 8425, 8844, 9298, 9665, 9849, 10440, 10673, 11390, 12158, 12623, 13091, 13398, 0, 0, 15064, 15704, 16424, 16788, 0, 17328, 17720, 18131, 18627, 19326]
    recuperados_julho = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5883, 5735, 5784, 0, 0, 0, 0, 7134, 0, 0, 0, 8275, 8341, 8407, 8533, 0, 10334, 10944, 11533, 12413, 12991]
    obitos_julho = [152, 167, 172, 182, 189, 195, 0, 216, 226, 233, 242, 253, 267, 287, 299, 310, 323, 336, 350, 0, 0, 404, 422, 444, 460, 0, 480, 491, 504, 524, 548]
    #plotando os gráficos numa grade 2x2
    layout = grid(2, 2)
    p = plot(layout=layout, leg=false)
    scatter!(p[1], dias_julho, confirmados_julho, title = "Casos confirmados em julho", xlabel = "dias de julho", ylabel = "confirmados")
    scatter!(p[2], dias_julho, obitos_julho, title = "Óbitos em julho", xlabel = "dias de julho", ylabel = "óbitos")
    scatter!(p[3], dias_julho, recuperados_julho, title = "Recuperados em julho", xlabel = "dias de julho", ylabel = "recuperados")
    scatter!(p[4], dias_julho, novos_casos_julho, title = "Novos casos em julho", xlabel = "dias de julho", ylabel = "novos casos")
    #salvando a imagem com os gráficos 
    png(p, "graficos_julho")
end
graficos_julho()


"""
2º Montar gráficos com todas as informações do mês de novembro
"""