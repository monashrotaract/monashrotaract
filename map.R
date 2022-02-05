library(leaflet)

leaflet(option=leafletOptions(scrollWheelZoom=FALSE)) %>%
  addMarkers(lng=145.1196, lat=-37.9245, label="Monash Rotaract") %>% 
  addProviderTiles(providers$Esri.WorldGrayCanvas) %>% 
  setView(lng=145.1196, lat=-37.9245, zoom = 17) %>% 
  
  htmlwidgets::appendContent(
    htmltools::tags$script(src = "static/Leaflet.Sleep.js")
  ) #%>% 
  htmlwidgets::saveWidget(file = "map.html")
