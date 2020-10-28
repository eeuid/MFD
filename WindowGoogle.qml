import QtQuick 2.12
import QtQuick.Controls 2.5
import QtLocation 5.10
import QtPositioning 5.6

Item
{
    ListModel
    {
        id:dummyModel
        ListElement
        {
            Latitude: 32.675052//47.212047
            Longitude: 51.650497//-1.551647
            Label: "something"
            Orientation: 0
            Color:"transparent"
        }
    }

    Plugin
    {
        id: googleMaps
        name: "osm"
        PluginParameter { name: "osm.useragent";                            value: "My great Qt OSM application" }
        PluginParameter { name: "osm.mapping.host";                         value: "http://osm.tile.server.address/" }
        PluginParameter { name: "osm.mapping.copyright";                    value: "All mine" }
        PluginParameter { name: "osm.routing.host";                         value: "http://osrm.server.address/viaroute" }
        PluginParameter { name: "osm.geocoding.host";                       value: "http://geocoding.server.address" }
        PluginParameter { name: "osm.mapping.providersrepository.address";  value: "http://a.tile.thunderforest.com/cycle/${z}/${x}/${y}.png?apikey=<da504e7a132d4ddf84038ae26c7594a4>"}         //OpenCycleMap
        PluginParameter { name: "osm.mapping.providersrepository.address";  value: "http://a.tile.thunderforest.com/transport/${z}/${x}/${y}.png?apikey=<da504e7a132d4ddf84038ae26c7594a4>" }    //transport
        PluginParameter { name: "osm.mapping.providersrepository.address";  value: "http://a.tile.thunderforest.com/landscape/${z}/${x}/${y}.png?apikey=<da504e7a132d4ddf84038ae26c7594a4>"}     //Landscape
        PluginParameter { name: "osm.mapping.providersrepository.address";  value: "http://a.tile.thunderforest.com/outdoors/${z}/${x}/${y}.png?apikey=<da504e7a132d4ddf84038ae26c7594a4>"}      //Outdoors
        PluginParameter { name: "osm.mapping.providersrepository.address";  value: "http://a.tile.thunderforest.com/transport-dark/${z}/${x}/${y}.png?apikey=<da504e7a132d4ddf84038ae26c7594a4>"}//Transport Dark
        PluginParameter { name: "osm.mapping.providersrepository.address";  value: "https://a.tile.thunderforest.com/spinal-map/${z}/${x}/${y}.png?apikey=<da504e7a132d4ddf84038ae26c7594a4>"}    //Spinal Map
        PluginParameter { name: "osm.mapping.providersrepository.address";  value: "http://a.tile.thunderforest.com/pioneer/${z}/${x}/${y}.png?apikey=<da504e7a132d4ddf84038ae26c7594a4>"}       //Pioneer
        PluginParameter { name: "osm.mapping.providersrepository.address";  value: "http://a.tile.thunderforest.com/mobile-atlas/${z}/${x}/${y}.png?apikey=<da504e7a132d4ddf84038ae26c7594a4>"}  //Mobile Atlas
        PluginParameter { name: "osm.mapping.providersrepository.address";  value: "http://a.tile.thunderforest.com/neighbourhood/${z}/${x}/${y}.png?apikey=<da504e7a132d4ddf84038ae26c7594a4>"} //Neighbourhood
        //PluginParameter { name: "osm.mapping.highdpi_tiles";                value: true }
    }

    Map
    {
        id: myMap
        anchors.fill: parent
        plugin: googleMaps
        activeMapType: supportedMapTypes[1]

        center: QtPositioning.coordinate(59.91, 10.75) // Oslo  //QtPositioning.coordinate(32.675052, 51.650497)
        zoomLevel: 30
        copyrightsVisible : false
        MapItemView
        {
            id:dynamicMapObject
            model: dummyModel
            delegate: MapQuickItem
            {
                coordinate: QtPositioning.coordinate(Latitude,Longitude)
                sourceItem:  Text
                {
                    width: 100
                    height: 50
                    text: model.Label
                    rotation: model.Orientation
                    opacity: 0.6
                    color: model.Color
                }
            }
        }

        MapPolyline
        {
                line.width: 3
                line.color: 'green'
                path: [
                    { latitude: 59.92, longitude: 10.77 },
                    { latitude: 59.96, longitude: 10.78 },
                    { latitude: 59.99, longitude: 10.76 },
                    { latitude: 59.95, longitude: 10.74 }
                ]
        }

        MapCircle
        {
          //a static item (fixed real dimension) always at 100m east of the map center
          id:prova
          center: myMap.center.atDistanceAndAzimuth(100,90)
          opacity:0.8
          color:"red"
          radius:30

        }
    }

    MouseArea
    {
           anchors.fill: parent
           acceptedButtons:  Qt.RightButton

           onClicked:
           {
                if (mouse.button === Qt.RightButton)
                {
                    dummyModel.append(
                                        {
                                            "Latitude": myMap.toCoordinate(Qt.point(mouseX,mouseY)).latitude ,
                                            "Longitude": myMap.toCoordinate(Qt.point(mouseX,mouseY)).longitude ,
                                            "Label": "abc" ,
                                            "Color": "red",
                                            "Orientation":Number(3),
                                        }
                                      )
                }
           }
    }

    Button
    {
        id:buttonMap
        text:"Click to add name"
        onClicked:
        {
            if(buttonMap.text == "Click to add name")
            {
                buttonMap.text = "Click to cancel name"
                myMap.activeMapType = myMap.supportedMapTypes[3]
            }
            else
            {
                buttonMap.text = "Click to add name"
                myMap.activeMapType = myMap.supportedMapTypes[1]
            }
        }
    }

    GroupBox
    {
           title:"map types"
           ComboBox
           {
               model:myMap.supportedMapTypes
               textRole:"description"
               onCurrentIndexChanged: myMap.activeMapType = myMap.supportedMapTypes[currentIndex]
           }
     }
}
