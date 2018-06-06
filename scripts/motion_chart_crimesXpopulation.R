# Verifica se foi instalado a biblioteca "googleVis". Se não está instalado,
# é instalado.
if (!require("googleVis")) {
  install.packages('googleVis')
}

# Diretório da pasta com csv e do html
csv_directory = "/home/ominaeshi/Developments/Github/VSD/base_de_dados_processada/motion_bubble_chart.csv"
html_directory = "/home/ominaeshi/Developments/Github/VSD/visualizacoes/"

# Importa a tabela que possui os dados necessários para a visualização.
vr1 <- read.csv(csv_directory)

# Instancia a visualização Motion Chart do Google.
# Como parâmetro, é passado a coluna "Tipos.de.Crimes" e o timeline é usado
# a coluna "Ano"
M <- gvisMotionChart(vr1, idvar="Tipos.de.Crimes", timevar="Ano")

# Salva a visualização gerada no em HTML no diretório escolhido.
print(M, file=paste(html_directory, 'motion_chart_crimeXpopulation.html', sep=''))

# Apresenta o gráfico gerado no navegador. Precisa do Shockwave Flash para visualizar.
plot(M)

