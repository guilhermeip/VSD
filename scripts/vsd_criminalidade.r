library(plotly)
library(quantmod)


data <- read.csv(file='~/Documentos/VSD/srs_pre-processadoCSV.csv')

chelan <- data[data$COUNTY == 'CHELAN' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
asotin <- data[data$COUNTY == 'ASOTIN' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
benton <- data[data$COUNTY == 'BENTON' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
adams <- data[data$COUNTY == 'ADAMS' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
clallam <- data[data$COUNTY == 'CLALLAM' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
clark <- data[data$COUNTY == 'CLARK' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
columbia <- data[data$COUNTY == 'COLUMBIA' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
cowlitz <- data[data$COUNTY == 'COWLITZ' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
douglas <- data[data$COUNTY == 'DOUGLAS' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
ferry <- data[data$COUNTY == 'FERRY' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
franklin <- data[data$COUNTY == 'FRANKLIN' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
garfield <- data[data$COUNTY == 'GARFIELD' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
grant <- data[data$COUNTY == 'GRANT' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
gh <- data[data$COUNTY == 'GRAYS HARBOR' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
island <- data[data$COUNTY == 'ISLAND' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
jefferson <- data[data$COUNTY == 'JEFFERSON' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
king <- data[data$COUNTY == 'KING' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
kitsap <- data[data$COUNTY == 'KITSAP' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
kittitas <- data[data$COUNTY == 'KITTITAS' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
kli <- data[data$COUNTY == 'KLICKITAT' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
lewis <- data[data$COUNTY == 'LEWIS' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
lincoln <- data[data$COUNTY == 'LINCOLN' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
mason <- data[data$COUNTY == 'MASON' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
okanogan <- data[data$COUNTY == 'OKANOGAN' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
pacifc <- data[data$COUNTY == 'PACIFIC' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
pendOreille <- data[data$COUNTY == 'PEND OREILLE' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
pierce <- data[data$COUNTY == 'PIERCE' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
sanJuan <- data[data$COUNTY == 'SAN JUAN' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
skagit <- data[data$COUNTY == 'SKAGIT' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
skamania <- data[data$COUNTY == 'SKAMANIA' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
snohomish <- data[data$COUNTY == 'SNOHOMISH' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
spokame <- data[data$COUNTY == 'SPOKANE' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
stevens <- data[data$COUNTY == 'STEVENS' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
thurston <- data[data$COUNTY == 'THURSTON' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
wahkiakum <- data[data$COUNTY == 'WAHKIAKUM' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
walla <- data[data$COUNTY == 'WALLA WALLA' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
whatcom <- data[data$COUNTY == 'WHATCOM' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
whitman <- data[data$COUNTY == 'WHITMAN' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]
yakima <- data[data$COUNTY == 'YAKIMA' & data$LOCATION == 'COUNTY TOTAL', c(2,5)]

king <- king[1:18,]
pierce <- pierce[1:18,]
snohomish <- snohomish[1:18,]
spokame <- spokame[1:18,]
thurston <- thurston[1:18,]
whatcom <- whatcom[1:18,]
dados <- data.frame(Date = adams[,1], chelan[,2], asotin[,2], benton[,2], adams[,2], clallam[,2], clark[,2], columbia[,2], cowlitz[,2], douglas[,2], ferry[,2], franklin[,2], garfield[,2], grant[,2], gh[,2], island[,2], jefferson[,2], king[,2], kitsap[,2], kittitas[,2], kli[,2], lewis[,2], lincoln[,2], mason[,2], okanogan[,2], pacifc[,2], pendOreille[,2], pierce[,2], sanJuan[,2], skagit[,2], skamania[,2], snohomish[,2], spokame[,2], stevens[,2], thurston[,2], wahkiakum[,2], walla[,2], whatcom[,2], whitman[,2], yakima[,2])


p <- plot_ly(dados, x = ~Date) %>%
      add_lines(y = chelan[,2], name = "Chelan") %>%
      add_lines(y = asotin[,2], name = "Asotin") %>%
      add_lines(y = benton[,2], name = "Benton") %>%
      add_lines(y = adams[,2], name = "Adams") %>%
      add_lines(y = clallam[,2], name = "Clallam") %>%
      add_lines(y = clark[,2], name = "Clark") %>%
      add_lines(y = columbia[,2], name = "Columbia") %>%
      add_lines(y = cowlitz[,2], name = "Cowlitz") %>%
      add_lines(y = douglas[,2], name = "Douglas") %>%
      add_lines(y = ferry[,2], name = "Ferry") %>%
      add_lines(y = franklin[,2], name = "Franklin") %>%
      add_lines(y = garfield[,2], name = "Garfield") %>%
      add_lines(y = grant[,2], name = "Grant") %>%
      add_lines(y = gh[,2], name = "Grays Harbor") %>%
      add_lines(y = island[,2], name = "Island") %>%
      add_lines(y = jefferson[,2], name = "Jefferson") %>%
      add_lines(y = king[,2], name = "King") %>%
      add_lines(y = kitsap[,2], name = "Kitsap") %>%
      add_lines(y = kittitas[,2], name = "Kittitas") %>%
      add_lines(y = kli[,2], name = "Klickitat") %>%
      add_lines(y = lewis[,2], name = "Lewis") %>%
      add_lines(y = lincoln[,2], name = "Lincoln") %>%
      add_lines(y = mason[,2], name = "Mason") %>%
      add_lines(y = okanogan[,2], name = "Okanogan") %>%
      add_lines(y = pacifc[,2], name = "Pacific") %>%
      add_lines(y = pendOreille[,2], name = "Pend Oreille") %>%
      add_lines(y = pierce[,2], name = "Pierce") %>%
      add_lines(y = sanJuan[,2], name = "San Juan") %>%
      add_lines(y = skagit[,2], name = "Skagit") %>%
      add_lines(y = skamania[,2], name = "Skamania") %>%
      add_lines(y = snohomish[,2], name = "Snohomish") %>%
      add_lines(y = spokame[,2], name = "Spokame") %>%
      add_lines(y = stevens[,2], name = "Stevens") %>%
      add_lines(y = thurston[,2], name = "Thurston") %>%
      add_lines(y = wahkiakum[,2], name = "Wahkiakum") %>%
      add_lines(y = walla[,2], name = "Walla Walla") %>%
      add_lines(y = whatcom[,2], name = "Whatcom") %>%
      add_lines(y = whitman[,2], name = "Whitman") %>%
      add_lines(y = yakima[,2], name = "Yakima") %>%
      layout(
            title = "Criminalidade dos Condados de Washington",
            xaxis = list(rangeslider = list(type = "date")),

            yaxis = list(title = "Total de Crimes"))