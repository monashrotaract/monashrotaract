library(leaflet)

leaflet(option=leafletOptions(scrollWheelZoom=FALSE)) %>%
  addMarkers(lng=145.16290, lat=-37.88022, label="Monash Rotaract") %>% 
  addProviderTiles(providers$Esri.WorldGrayCanvas) %>% 
  setView(lng=145.16290, lat=-37.88022, zoom = 17) %>% 
  htmlwidgets::appendContent(
    htmltools::tags$script(src = "static/Leaflet.Sleep.js")
  ) %>% 
  htmlwidgets::saveWidget(file = "map.html")
