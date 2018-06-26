import plotly.plotly as py
import plotly.figure_factory as ff

import numpy as np
import pandas as pd

def calcula_media(valores, populacao):
    soma = 0
    for valor in valores:
        soma+=valor

    media_valor = soma/len(valores)
    soma_pop = 0
    for pop in populacao:
        soma_pop+=pop
    
    media_pop = soma_pop/len(populacao)

    return (media_valor/(media_pop/1000))
    


df_sample = pd.read_csv('/home/gabriel/Documentos/faculdade/Visualizacao_de_dados/codigo/base_modificada_para_visualizacao.csv')

fips = df_sample['FIPS'].tolist()

lista_fips = []
for value in fips:
    if value not in lista_fips:
        lista_fips.append(value)

values = []
for fips in lista_fips:
    tab = df_sample[df_sample['FIPS'] == fips]
    valores = tab['MVTHEFT'].tolist()
    populacao = tab['POPULATION'].tolist()
    values.append(calcula_media(valores, populacao))

escala = []
for v in values:
    escala.append(v)

escala.sort()

colorscale = ["#8dd3c7", "#ffffb3", "#bebada", "#fb8072",
              "#80b1d3", "#fdb462", "#b3de69", "#fccde5",
              "#d9d9d9", "#bc80bd", "#ccebc5", "#ffed6f",
              "#8dd3c7", "#ffffb3", "#bebada", "#fb8072",
              "#80b1d3", "#fdb462", "#b3de69", "#fccde5",
              "#d9d9d9", "#bc80bd", "#ccebc5", "#ffed6f",
              "#8dd3c7", "#ffffb3", "#bebada", "#fb8072",
              "#80b1d3", "#fdb462", "#b3de69", "#fccde5",
              "#d9d9d9", "#bc80bd", "#ccebc5", "#ffed6f"]

fig = ff.create_choropleth(
    fips = lista_fips, values = values, scope = ['Washington'],
    binning_endpoints = escala,
    county_outline = {'color': 'rgb(255,255,255)', 'width': 0.5}, round_legend_values=True,
    legend_title='average crime theft', title='Whashington'
)
py.plot(fig, filename='choropleth_california_and_surr_states_outlines',world_readable=True)
