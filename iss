[
    {
        "id": "31cca0d7.4cc35",
        "type": "template",
        "z": "fd48a594.d8abb8",
        "name": "Space Station Tracker",
        "field": "payload",
        "fieldType": "msg",
        "format": "handlebars",
        "syntax": "plain",
        "template": "<!DOCTYPE html>\n<html>\n    <head>\n        <title>Realtime ISS</title>\n        <meta name=\"viewport\" content=\"initial-scale=1.0, user-scalable=no\" />\n        <style type=\"text/css\">\n            html { height: 100% }\n            body { height: 100%; margin: 0; padding: 0 }\n            #map { height: 100% }\n        </style>\n        <script type=\"text/javascript\" src=\"//maps.googleapis.com/maps/api/js?key=AIzaSyAFLoXS1lPMv75OISOZ0GujwAhH1LPlJP4&sensor=false\"></script>\n        <script src=\"//googlemaps.github.io/js-map-label/src/maplabel-compiled.js\"></script>\n        <script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\"></script>\n        <script type=\"text/javascript\">\n            var map, marker, last_latlng;\n\n            function init() {\n                var latlng = new google.maps.LatLng(43.7081784,-79.4609571);//51.48931, -0.08819);\n                var mapOptions = { center: latlng, zoom: 2, mapTypeId: google.maps.MapTypeId.TERRAIN, //zoomControl: true, scaleControl: true}\n          \n           mapTypeControl: true,\n          mapTypeControlOptions: {\n              style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,\n              position: google.maps.ControlPosition.TOP_CENTER\n          },\n          zoomControl: true,\n          zoomControlOptions: {\n              position: google.maps.ControlPosition.LEFT_CENTER\n          },\n          scaleControl: true,\n          streetViewControl: true,\n          streetViewControlOptions: {\n              position: google.maps.ControlPosition.LEFT_TOP\n          },\n          fullscreenControl: true\n                }\n\n\n                map = new google.maps.Map(document.getElementById(\"map\"), mapOptions);\n                infoWindow = new google.maps.InfoWindow();\n                maxZoomService = new google.maps.MaxZoomService();\n              //  map.addListener('click', showMaxZoom);\n\n\n                marker = new google.maps.Marker({ position: latlng, map: map, title: \"Lat:\"+latlng, icon: 'https://raw.githubusercontent.com/picklepete/iss/master/saticon.gif' });\n    //aquator\n    \n    \n       var rectangle = new google.maps.Rectangle({\n       strokeColor: '#0000FF',\n       strokeOpacity: 0.8,\n       strokeWeight: 2,\n       fillColor: '#ffffff',\n       fillOpacity: 0.35,\n       map: map,\n       bounds: new google.maps.LatLngBounds(\n       new google.maps.LatLng(0, 90),\n       new google.maps.LatLng(0, 0))\n     });\n     \n    b1tlx= 85.03568516\n    b1tly= -150.734375\n    b1brx= -60.2679967\n    b1bry= -120.90625\n    var rectangle = new google.maps.Rectangle({\n       strokeColor: '#FF0000',\n       strokeOpacity: 0.8,\n       strokeWeight: 2,\n       fillColor: '#ffffff',\n       fillOpacity: 0.35,\n       map: map,\n       bounds: new google.maps.LatLngBounds(\n       new google.maps.LatLng(b1tlx, b1tly),\n       new google.maps.LatLng(b1brx, b1bry))\n     });\n     \n       var mapLabel = new MapLabel({\n          text: 'BOX 1',\n          position: new google.maps.LatLng(b1brx, b1bry),\n          map: map,\n          fontSize: 15,\n          align: 'top'\n        });\n     //   mapLabel.set('position', new google.maps.LatLng(34.03, -118.235));\n        \n    b2tlx= 85.03568516\n    b2tly= -100.734375\n    b2brx= -60.2679967\n    b2bry= -70.90625\n   \n  var rectangle1 = new google.maps.Rectangle({\n       strokeColor: '#FF0000',\n       strokeOpacity: 0.8,\n       strokeWeight: 2,\n       fillColor: '#ffffff',\n       fillOpacity: 0.35,\n       map: map,\n       bounds: new google.maps.LatLngBounds(\n       new google.maps.LatLng(b2tlx, b2tly),\n       new google.maps.LatLng(b2brx, b2bry))\n     });\n     \n       var mapLabel = new MapLabel({\n          text: 'BOX 2',\n          position: new google.maps.LatLng(b2brx, b2bry),\n          map: map,\n          fontSize: 15,\n          align: 'top'\n        });\n\n   \n  var rectangle2 = new google.maps.Rectangle({\n       strokeColor: '#FF0000',\n       strokeOpacity: 0.8,\n       strokeWeight: 2,\n       fillColor: '#ffffff',\n       fillOpacity: 0.35,\n       map: map,\n       bounds: new google.maps.LatLngBounds(\n       new google.maps.LatLng(85.03568516, -50.734375),\n       new google.maps.LatLng(-60.2679967,-10.90625))\n     });\n   \n       var mapLabel = new MapLabel({\n          text: 'BOX 3',\n          position: new google.maps.LatLng(-60.2679967,-10.90625),\n          map: map,\n          fontSize: 15,\n          align: 'top'\n        });\n\n\n     var rectangle3 = new google.maps.Rectangle({\n       strokeColor: '#FF0000',\n       strokeOpacity: 0.8,\n       strokeWeight: 2,\n       fillColor: '#ffffff',\n       fillOpacity: 0.35,\n       map: map,\n       bounds: new google.maps.LatLngBounds(\n       new google.maps.LatLng(85.03568516, 10),\n       new google.maps.LatLng(-60.2679967, 40))\n     });\n     \n     \n       var mapLabel = new MapLabel({\n          text: 'BOX 4',\n          position: new google.maps.LatLng(-60.2679967, 40),\n          map: map,\n          fontSize: 15,\n          align: 'top'\n        });\n\n\n          var rectangle4 = new google.maps.Rectangle({\n       strokeColor: '#FF0000',\n       strokeOpacity: 0.8,\n       strokeWeight: 2,\n       fillColor: '#ffffff',\n       fillOpacity: 0.35,\n       map: map,\n       bounds: new google.maps.LatLngBounds(\n       new google.maps.LatLng(85, 90),\n       new google.maps.LatLng(-60, 130))\n     }); \n     \n       \n       var mapLabel = new MapLabel({\n          text: 'BOX 5',\n          position: new google.maps.LatLng(-60, 130),\n          map: map,\n          fontSize: 15,\n          align: 'top'\n        });\n         \n            }\n            google.maps.event.addDomListener(window, 'load', init);\n\n\n\n           function showMaxZoom(e) {\n             maxZoomService.getMaxZoomAtLatLng(e.latLng, function(response) {\n               if (response.status !== google.maps.MaxZoomStatus.OK) {\n                 infoWindow.setContent('Error in MaxZoomService');\n               } else {\n                 infoWindow.setContent(\n                     'The maximum zoom at this location is: ' + response.zoom);\n               }\n               infoWindow.setPosition(e.latLng);\n               infoWindow.open(map);\n             });\n           }\n            function draw_flight_path(latlng) {\n                if(last_latlng == undefined) {\n                    last_latlng = latlng;\n                }\n                flight_path = new google.maps.Polyline({\n                    path: [last_latlng, latlng],\n                    strokeColor: \"#FFFF00\",\n                    strokeOpacity: 1.0,\n                    strokeWeight: 2\n                });\n                last_latlng = latlng;\n                flight_path.setMap(map);\n            };\n\n            function get_latest_position() {\n                $.getJSON('http://open-notify-api.herokuapp.com/iss-now.json?callback=?', function(data, status) {\n                    position = data.iss_position;\n var latlng = new google.maps.LatLng(position.latitude, position.longitude);\n// $.getJSON('https://api.wheretheiss.at/v1/satellites/25544/', function(data, status) {\n\n                    var latlng = new google.maps.LatLng(position.latitude, position.longitude);\n                    map.setCenter(latlng);\n                    marker.setPosition(latlng);\n                    marker.setTitle(\"Position: \"+latlng);\n                    var mycon = \"ISSI<br>Lat:\"+position.latitude+\"<br>Long\"+ position.longitude\n                    var myinfowindow = new google.maps.InfoWindow({\n                        content: mycon\n                    });\n marker.addListener('click', function() {\n    myinfowindow.open(map, marker);\n  });\n\n                    draw_flight_path(latlng);\n                    \n                });\n            };\n            setInterval(get_latest_position, 5000);\n        </script>\n    </head>\n    <body>\n        <div id=\"map\"/>\n    </body>\n</html>\n",
        "output": "str",
        "x": 320,
        "y": 80,
        "wires": [
            [
                "e81157b1.94a158"
            ]
        ]
    },
    {
        "id": "ad88504f.8ebec",
        "type": "http in",
        "z": "fd48a594.d8abb8",
        "name": "",
        "url": "/iss",
        "method": "get",
        "upload": false,
        "swaggerDoc": "",
        "x": 103.5,
        "y": 79.25,
        "wires": [
            [
                "31cca0d7.4cc35"
            ]
        ]
    },
    {
        "id": "e81157b1.94a158",
        "type": "http response",
        "z": "fd48a594.d8abb8",
        "name": "",
        "statusCode": "",
        "headers": {},
        "x": 530,
        "y": 80,
        "wires": []
    },
    {
        "id": "a1c4628c.ce9f3",
        "type": "http request",
        "z": "fd48a594.d8abb8",
        "name": "",
        "method": "GET",
        "ret": "obj",
        "url": "http://open-notify-api.herokuapp.com/iss-now.json",
        "tls": "",
        "x": 290,
        "y": 160,
        "wires": [
            [
                "42c9157.94068ec",
                "ccc83bf1.691b08",
                "10db7078.fa166",
                "3ab2a77d.f0af68"
            ]
        ]
    },
    {
        "id": "42c9157.94068ec",
        "type": "debug",
        "z": "fd48a594.d8abb8",
        "name": "IssiPos",
        "active": false,
        "console": "false",
        "complete": "payload",
        "x": 280,
        "y": 120,
        "wires": []
    },
    {
        "id": "7d4f27ae.79e088",
        "type": "inject",
        "z": "fd48a594.d8abb8",
        "name": "",
        "topic": "",
        "payload": "",
        "payloadType": "date",
        "repeat": "10",
        "crontab": "",
        "once": false,
        "x": 110,
        "y": 160,
        "wires": [
            [
                "a1c4628c.ce9f3"
            ]
        ]
    },
    {
        "id": "4358986f.4c25b8",
        "type": "ui_template",
        "z": "fd48a594.d8abb8",
        "group": "cac9bc57.ecc54",
        "name": "map",
        "order": 0,
        "width": "15",
        "height": "11",
        "format": "<div >\n<iframe src=\"/iss\" height=600 width=800>\n  <p>Your browser does not support iframes.</p>\n</iframe>\n</div>",
        "storeOutMessages": false,
        "fwdInMessages": false,
        "templateScope": "local",
        "x": 530,
        "y": 40,
        "wires": [
            []
        ]
    },
    {
        "id": "ccc83bf1.691b08",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "DisplayLat",
        "func": "\nreturn msg;",
        "outputs": 1,
        "noerr": 0,
        "x": 530,
        "y": 180,
        "wires": [
            [
                "e387b15.b2a195",
                "b0f2316a.a8d5b"
            ]
        ]
    },
    {
        "id": "e387b15.b2a195",
        "type": "ui_text",
        "z": "fd48a594.d8abb8",
        "group": "1712fb3a.6354f5",
        "order": 1,
        "width": 0,
        "height": 0,
        "name": "",
        "label": "latitude",
        "format": "{{msg.payload.iss_position.latitude}}",
        "layout": "row-spread",
        "x": 720,
        "y": 160,
        "wires": []
    },
    {
        "id": "b0f2316a.a8d5b",
        "type": "ui_text",
        "z": "fd48a594.d8abb8",
        "group": "1712fb3a.6354f5",
        "order": 2,
        "width": 0,
        "height": 0,
        "name": "",
        "label": "longitude",
        "format": "{{msg.payload.iss_position.longitude}}",
        "layout": "row-spread",
        "x": 720,
        "y": 200,
        "wires": []
    },
    {
        "id": "19347eff.603d21",
        "type": "ui_gauge",
        "z": "fd48a594.d8abb8",
        "name": "",
        "group": "725269ab.9f1238",
        "order": 0,
        "width": "5",
        "height": "3",
        "gtype": "gage",
        "title": "Blue",
        "label": "units",
        "format": "{{value}}",
        "min": 0,
        "max": "255",
        "colors": [
            "#7e959a",
            "#6f7dc9",
            "#530dbb"
        ],
        "seg1": "",
        "seg2": "",
        "x": 1250,
        "y": 740,
        "wires": []
    },
    {
        "id": "abce1876.0d2708",
        "type": "ui_gauge",
        "z": "fd48a594.d8abb8",
        "name": "",
        "group": "725269ab.9f1238",
        "order": 0,
        "width": "5",
        "height": "3",
        "gtype": "gage",
        "title": "Green",
        "label": "units",
        "format": "{{value}}",
        "min": 0,
        "max": "255",
        "colors": [
            "#7e959a",
            "#73bc78",
            "#21ac1b"
        ],
        "seg1": "",
        "seg2": "",
        "x": 1250,
        "y": 700,
        "wires": []
    },
    {
        "id": "a6948412.cb5ad8",
        "type": "ibmiot in",
        "z": "fd48a594.d8abb8",
        "authentication": "boundService",
        "apiKey": "",
        "inputType": "evt",
        "deviceId": "playbulb00",
        "applicationId": "",
        "deviceType": "+",
        "eventType": "ping",
        "commandType": "",
        "format": "json",
        "name": "FromPiCandle",
        "service": "registered",
        "allDevices": false,
        "allApplications": false,
        "allDeviceTypes": true,
        "allEvents": false,
        "allCommands": false,
        "allFormats": true,
        "qos": "0",
        "x": 730,
        "y": 700,
        "wires": [
            [
                "eec2b40b.bb8918",
                "c400cccf.2355",
                "41547125.8e5ae",
                "b3cc1a87.0780c8",
                "2ca31ca1.6d6554",
                "4ad4ceb9.e3288"
            ]
        ]
    },
    {
        "id": "3ab2a77d.f0af68",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "CheckArea",
        "func": "//Lat = Y Long = X\n/*\nbb is the bounding box, (ix,iy) are its top-left coordinates, and (ax,ay) its bottom-right coordinates. p is the point and (x,y) its coordinates.\n*/\nfunction checkPos(lat,lon,topleftlat,topleftlon,bottomrightlat,bottomrightlon,box)\n{\n    msg.inbox = box;\n  \n  //  node.warn(\"X topleftlon \"+topleftlon+\"  <= lon \"+lon+ \" res = \"+(   topleftlon <= lon   ))\n  //  node.warn(\"X lon \"+lon+\"  <= bottomrightlon \"+bottomrightlon+ \" res = \"+(  lon <= bottomrightlon)  )\n\nif( topleftlon <= lon && lon <= bottomrightlon ) {\n    // Point is in bounding box\n\n \n //node.warn(\" ISS in the area (\"+box+\").. candle ON\")  \nreturn true;\n\n}else{\n// node.warn(\"ISS not in the area  (\"+box+\")... candle OFF\")  \n return  false;\n\n\n}\nreturn  false;\n}\n\n \nmsg.latitude = msg.payload.iss_position.latitude;\nmsg.longitude = msg.payload.iss_position.longitude;\n\n  r0LatTl= 85\n  r0LngTl=-150\n\n  r0LatBr= -60\n  r0LngBr= -120\n\n  r1LatTl=  85\n  r1LngTl=-100.\n\n  r1LatBr= -60\n  r1LngBr= -70\n\n\n  r2LatTl=  85\n  r2LngTl= -50\n\n  r2LatBr= -60\n  r2LngBr= -10\n\n  r3LatTl=  85\n  r3LngTl= 10\n\n  r3LatBr= 85\n  r3LngBr= 40\n  \n  r4LatTl= 85\n  r4LngTl= 90\n\n  r4LatBr= -60\n  r4LngBr= 130\n\n/*\n\nlatitude\n\n-50.50472391191916\n\nlongitude\n\n-126.35910070188285\n\n\n\nlatitude = -50.5047239119191\n\nlongitude= -126.35910070188285\n\nmsg.inarea = false;\n node.warn(\"check\")\nres =checkPos(latitude ,longitude,r0LatTl,r0LngTl,r0LatBr,r0LngBr,\"box 1\");\nmsg.inarea = res;\nif(res)\n    return msg;\n  */  \n\nmsg.inarea = false;\nres =checkPos(msg.latitude ,msg.longitude,r0LatTl,r0LngTl,r0LatBr,r0LngBr,\"box1\");\nmsg.inarea = res;\nif(res)\n    return msg;\n\n\nres =checkPos(msg.latitude ,msg.longitude,r1LatTl,r1LngTl,r1LatBr,r1LngBr,\"box 2\");\nmsg.inarea = res;\nif(res)\n    return msg;\n    \n \nres =checkPos(msg.latitude ,msg.longitude,r2LatTl,r2LngTl,r2LatBr,r2LngBr,\"box 3\");\nmsg.inarea = res;\nif(res)\n    return msg;   \n\nres =checkPos(msg.latitude ,msg.longitude,r3LatTl,r3LngTl,r3LatBr,r3LngBr,\"box 4\");\nmsg.inarea = res;\nif(res)\n    return msg;   \n\n\nres =checkPos(msg.latitude ,msg.longitude,r4LatTl,r4LngTl,r4LatBr,r4LngBr,\"box 5\");\nmsg.inarea = res;\nif(res)\n    return msg; \n    \nmsg.inbox = \"No\";    \nreturn msg;",
        "outputs": 1,
        "noerr": 0,
        "x": 190,
        "y": 340,
        "wires": [
            [
                "b39fa11f.6ddaf",
                "e738b0ff.ce953",
                "b9fc88ac.385528"
            ]
        ]
    },
    {
        "id": "973bbe0c.1664e",
        "type": "e-mail",
        "z": "fd48a594.d8abb8",
        "server": "smtp.gmail.com",
        "port": "465",
        "secure": true,
        "name": "yourmail@gmail.com , mvk4ibm@gmail.com",
        "dname": "",
        "x": 1230,
        "y": 340,
        "wires": []
    },
    {
        "id": "b683e3ab.b6cf6",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "IfIss is in Area send email",
        "func": "\n    msg.topic = \"ISS update for YOU\"\n    msg.payload= \"Hello from Node-RED ISS is in Area with the SPEED of x Km/H and traveled  \"+global.get(\"distance\")+ \" km\";\n    return msg;",
        "outputs": 1,
        "noerr": 0,
        "x": 890,
        "y": 340,
        "wires": [
            [
                "973bbe0c.1664e",
                "d9240f6f.19463"
            ]
        ]
    },
    {
        "id": "190eebee.071da4",
        "type": "inject",
        "z": "fd48a594.d8abb8",
        "name": "Send Email",
        "topic": "",
        "payload": "",
        "payloadType": "str",
        "repeat": "",
        "crontab": "",
        "once": false,
        "x": 890,
        "y": 400,
        "wires": [
            [
                "b683e3ab.b6cf6"
            ]
        ]
    },
    {
        "id": "d9240f6f.19463",
        "type": "debug",
        "z": "fd48a594.d8abb8",
        "name": "email",
        "active": false,
        "console": "false",
        "complete": "true",
        "x": 1110,
        "y": 400,
        "wires": []
    },
    {
        "id": "7109abd5.b7dd04",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "setCandleMode=Flashing",
        "func": "var newmsg = {\"cmd\" : \"setcolor\",\n//00 7e ff 00 00 00 19 00\"\n// modes: 01 = Fade, 02 = Jump RBG (rainbow), 03 = Fade RGB (rainbow), 04 = Candle Effect\n\n\"mode\":0,\n\"speed1\":19,\n\"speed2\":0,\n\"rr\" : 0,\n\"gg\" : 0,\n\"bb\" : 255\n    \n}\nmsg.eventOrCommandType = \"setCandleMode\";\nmsg.payload=newmsg ;\nreturn msg;",
        "outputs": 1,
        "noerr": 0,
        "x": 150,
        "y": 860,
        "wires": [
            []
        ]
    },
    {
        "id": "913478cc.a0b978",
        "type": "delay",
        "z": "fd48a594.d8abb8",
        "name": "",
        "pauseType": "delay",
        "timeout": "2",
        "timeoutUnits": "seconds",
        "rate": "1",
        "nbRateUnits": "1",
        "rateUnits": "second",
        "randomFirst": "1",
        "randomLast": "5",
        "randomUnits": "seconds",
        "drop": true,
        "x": 120,
        "y": 500,
        "wires": [
            [
                "bc8d29a6.116c18"
            ]
        ]
    },
    {
        "id": "1608e268.b0326e",
        "type": "ibmiot out",
        "z": "fd48a594.d8abb8",
        "authentication": "boundService",
        "apiKey": "",
        "outputType": "cmd",
        "deviceId": "playbulb00",
        "deviceType": "playbulb",
        "eventCommandType": "setColor",
        "format": "json",
        "data": "msg.payload",
        "qos": 0,
        "name": "toPiCandle",
        "service": "registered",
        "x": 650,
        "y": 500,
        "wires": []
    },
    {
        "id": "7a22ce0e.46c78",
        "type": "comment",
        "z": "fd48a594.d8abb8",
        "name": "Check the Code below",
        "info": "",
        "x": 200,
        "y": 300,
        "wires": []
    },
    {
        "id": "59d7abe.eae3954",
        "type": "comment",
        "z": "fd48a594.d8abb8",
        "name": "IssWebPage",
        "info": "",
        "x": 287.2222222222222,
        "y": 37.5,
        "wires": []
    },
    {
        "id": "4e2b7c7f.b7d794",
        "type": "comment",
        "z": "fd48a594.d8abb8",
        "name": "#2 Use Your GMAIL account",
        "info": "",
        "x": 1180,
        "y": 300,
        "wires": []
    },
    {
        "id": "ccb6292e.386c78",
        "type": "inject",
        "z": "fd48a594.d8abb8",
        "name": "",
        "topic": "",
        "payload": "",
        "payloadType": "date",
        "repeat": "",
        "crontab": "",
        "once": false,
        "x": 120,
        "y": 540,
        "wires": [
            [
                "bc8d29a6.116c18"
            ]
        ]
    },
    {
        "id": "1d9e8149.209e4f",
        "type": "comment",
        "z": "fd48a594.d8abb8",
        "name": "#1 Adjust the candle number",
        "info": "",
        "x": 920,
        "y": 440,
        "wires": []
    },
    {
        "id": "ce49a89.27d8b58",
        "type": "comment",
        "z": "fd48a594.d8abb8",
        "name": "#1 Adjust the candle number",
        "info": "",
        "x": 740,
        "y": 660,
        "wires": []
    },
    {
        "id": "eec2b40b.bb8918",
        "type": "debug",
        "z": "fd48a594.d8abb8",
        "name": "InComing",
        "active": false,
        "console": "false",
        "complete": "payload",
        "x": 720,
        "y": 760,
        "wires": []
    },
    {
        "id": "c400cccf.2355",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "Red",
        "func": "var newmsg ={}\nnewmsg.payload = msg.payload.candleRR\nnewmsg.topic =\"Red\";\nreturn newmsg;",
        "outputs": 1,
        "noerr": 0,
        "x": 1050,
        "y": 660,
        "wires": [
            [
                "a62e7856.09c578"
            ]
        ]
    },
    {
        "id": "41547125.8e5ae",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "Green",
        "func": "msg.payload = msg.payload.candleGG\nmsg.topic =\"Green\";\nreturn msg;",
        "outputs": 1,
        "noerr": 0,
        "x": 1050,
        "y": 700,
        "wires": [
            [
                "abce1876.0d2708"
            ]
        ]
    },
    {
        "id": "b3cc1a87.0780c8",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "Blue",
        "func": "msg.payload = msg.payload.candleBB\nmsg.topic =\"Blue\";\nreturn msg;",
        "outputs": 1,
        "noerr": 0,
        "x": 1050,
        "y": 740,
        "wires": [
            [
                "19347eff.603d21"
            ]
        ]
    },
    {
        "id": "a62e7856.09c578",
        "type": "ui_gauge",
        "z": "fd48a594.d8abb8",
        "name": "",
        "group": "725269ab.9f1238",
        "order": 0,
        "width": "5",
        "height": "3",
        "gtype": "gage",
        "title": "Red",
        "label": "units",
        "format": "{{value}}",
        "min": 0,
        "max": "255",
        "colors": [
            "#7e959a",
            "#bcb489",
            "#ac0c19"
        ],
        "seg1": "",
        "seg2": "",
        "x": 1250,
        "y": 660,
        "wires": []
    },
    {
        "id": "1e3aae1e.bb0b72",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "setCandle=OFF",
        "func": "var newmsg = {\"cmd\" : \"setcolor\",\n//00 7e ff 00 00 00 19 00\"\n// modes: 01 = Fade, 02 = Jump RBG (rainbow), 03 = Fade RGB (rainbow), 04 = Candle Effect\n\n\"mode\":0,\n\"speed1\":0,\n\"speed2\":0,\n\"rr\" : 0,\n\"gg\" : 0,\n\"bb\" : 0\n    \n}\nmsg.eventOrCommandType = \"setColor\";\nmsg.payload=newmsg ;\nreturn msg;",
        "outputs": 1,
        "noerr": 0,
        "x": 480,
        "y": 420,
        "wires": [
            [
                "1608e268.b0326e",
                "60fd63fd.30649c"
            ]
        ]
    },
    {
        "id": "446fbf67.740d8",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "setCandle=Red",
        "func": "var newmsg = {\"cmd\" : \"setcolor\",\n//00 7e ff 00 00 00 19 00\"\n// modes: 01 = Fade, 02 = Jump RBG (rainbow), 03 = Fade RGB (rainbow), 04 = Candle Effect\n\n\"mode\":0,\n\"speed1\":0,\n\"speed2\":0,\n\"rr\" : 255,\n\"gg\" : 0,\n\"bb\" : 0\n    \n}\nmsg.eventOrCommandType = \"setColor\";\nmsg.payload=newmsg ;\nreturn msg;",
        "outputs": 1,
        "noerr": 0,
        "x": 360,
        "y": 480,
        "wires": [
            [
                "1608e268.b0326e"
            ]
        ]
    },
    {
        "id": "17f5c37.75a863d",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "setCandle=Blue",
        "func": "var newmsg = {\"cmd\" : \"setcolor\",\n//00 7e ff 00 00 00 19 00\"\n// modes: 01 = Fade, 02 = Jump RBG (rainbow), 03 = Fade RGB (rainbow), 04 = Candle Effect\n\n\"mode\":0,\n\"speed1\":0,\n\"speed2\":0,\n\"rr\" : 0,\n\"gg\" : 0,\n\"bb\" : 255\n    \n}\nmsg.eventOrCommandType = \"setColor\";\nmsg.payload=newmsg ;\nreturn msg;",
        "outputs": 1,
        "noerr": 0,
        "x": 160,
        "y": 620,
        "wires": [
            [
                "1608e268.b0326e"
            ]
        ]
    },
    {
        "id": "8c209665.e505f8",
        "type": "inject",
        "z": "fd48a594.d8abb8",
        "name": "",
        "topic": "",
        "payload": "",
        "payloadType": "date",
        "repeat": "",
        "crontab": "",
        "once": false,
        "x": 120,
        "y": 580,
        "wires": [
            [
                "17f5c37.75a863d"
            ]
        ]
    },
    {
        "id": "bc8d29a6.116c18",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "setCandle=Green",
        "func": "var newmsg = {\"cmd\" : \"setcolor\",\n//00 7e ff 00 00 00 19 00\"\n// modes: 01 = Fade, 02 = Jump RBG (rainbow), 03 = Fade RGB (rainbow), 04 = Candle Effect\n\n\"mode\":0,\n\"speed1\":0,\n\"speed2\":0,\n\"rr\" : 0,\n\"gg\" : 255,\n\"bb\" : 0\n    \n}\nmsg.eventOrCommandType = \"setColor\";\nmsg.payload=newmsg ;\nreturn msg;",
        "outputs": 1,
        "noerr": 0,
        "x": 370,
        "y": 520,
        "wires": [
            [
                "1608e268.b0326e"
            ]
        ]
    },
    {
        "id": "dc8bde58.fe3a1",
        "type": "comment",
        "z": "fd48a594.d8abb8",
        "name": "#3 Check email text",
        "info": "",
        "x": 870,
        "y": 300,
        "wires": []
    },
    {
        "id": "b39fa11f.6ddaf",
        "type": "switch",
        "z": "fd48a594.d8abb8",
        "name": "In Area ?",
        "property": "inarea",
        "propertyType": "msg",
        "rules": [
            {
                "t": "true"
            },
            {
                "t": "else"
            }
        ],
        "checkall": "true",
        "outputs": 2,
        "x": 380,
        "y": 340,
        "wires": [
            [
                "913478cc.a0b978",
                "1441404d.b551b",
                "446fbf67.740d8",
                "4b014eaa.63bfb"
            ],
            [
                "1e3aae1e.bb0b72"
            ]
        ]
    },
    {
        "id": "1441404d.b551b",
        "type": "delay",
        "z": "fd48a594.d8abb8",
        "name": "",
        "pauseType": "rate",
        "timeout": "1",
        "timeoutUnits": "minutes",
        "rate": "1",
        "nbRateUnits": "1",
        "rateUnits": "minute",
        "randomFirst": "1",
        "randomLast": "5",
        "randomUnits": "seconds",
        "drop": true,
        "x": 620,
        "y": 340,
        "wires": [
            [
                "b683e3ab.b6cf6"
            ]
        ]
    },
    {
        "id": "60fd63fd.30649c",
        "type": "debug",
        "z": "fd48a594.d8abb8",
        "name": "Not in area",
        "active": true,
        "console": "false",
        "complete": "true",
        "x": 650,
        "y": 420,
        "wires": []
    },
    {
        "id": "e738b0ff.ce953",
        "type": "debug",
        "z": "fd48a594.d8abb8",
        "name": "Check",
        "active": false,
        "console": "false",
        "complete": "payload",
        "x": 170,
        "y": 400,
        "wires": []
    },
    {
        "id": "e7490a9c.53db08",
        "type": "ui_text",
        "z": "fd48a594.d8abb8",
        "group": "1712fb3a.6354f5",
        "order": 4,
        "width": 0,
        "height": 0,
        "name": "",
        "label": "In Area?",
        "format": "{{msg.inbox}}",
        "layout": "row-spread",
        "x": 720,
        "y": 260,
        "wires": []
    },
    {
        "id": "b9fc88ac.385528",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "InBox",
        "func": "msg.inbox = msg.inbox.toUpperCase();\nreturn msg;",
        "outputs": 1,
        "noerr": 0,
        "x": 510,
        "y": 260,
        "wires": [
            [
                "e7490a9c.53db08"
            ]
        ]
    },
    {
        "id": "4c75dcfc.ac36c4",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "setCandle=OFF",
        "func": "var newmsg = {\"cmd\" : \"setcolor\",\n//00 7e ff 00 00 00 19 00\"\n// modes: 01 = Fade, 02 = Jump RBG (rainbow), 03 = Fade RGB (rainbow), 04 = Candle Effect\n\n\"mode\":0,\n\"speed1\":0,\n\"speed2\":0,\n\"rr\" : 0,\n\"gg\" : 0,\n\"bb\" : 0\n    \n}\nmsg.eventOrCommandType = \"setColor\";\nmsg.payload=newmsg ;\nreturn msg;",
        "outputs": 1,
        "noerr": 0,
        "x": 160,
        "y": 740,
        "wires": [
            [
                "1608e268.b0326e"
            ]
        ]
    },
    {
        "id": "4872cf4d.c43d7",
        "type": "ui_button",
        "z": "fd48a594.d8abb8",
        "name": "",
        "group": "1712fb3a.6354f5",
        "order": 6,
        "width": 0,
        "height": 0,
        "passthru": false,
        "label": "Turn Candle Off",
        "color": "",
        "bgcolor": "",
        "icon": "",
        "payload": "\"off\"",
        "payloadType": "str",
        "topic": "",
        "x": 136.875,
        "y": 780.625,
        "wires": [
            [
                "4c75dcfc.ac36c4"
            ]
        ]
    },
    {
        "id": "4b014eaa.63bfb",
        "type": "debug",
        "z": "fd48a594.d8abb8",
        "name": "In Area",
        "active": true,
        "console": "false",
        "complete": "true",
        "x": 520,
        "y": 300,
        "wires": []
    },
    {
        "id": "e809d3f8.6b997",
        "type": "comment",
        "z": "fd48a594.d8abb8",
        "name": "Infos",
        "info": "mvk@ca.ibm.com - November 2017 \nSee https://github.com/SixNationsPolytechnic/iotcandle",
        "x": 90,
        "y": 1000,
        "wires": []
    },
    {
        "id": "2ca31ca1.6d6554",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "Counter",
        "func": "var newmsg ={}\nnewmsg.payload = msg.payload.value\nreturn newmsg;",
        "outputs": 1,
        "noerr": 0,
        "x": 1060,
        "y": 600,
        "wires": [
            [
                "92f39022.df687"
            ]
        ]
    },
    {
        "id": "92f39022.df687",
        "type": "ui_text",
        "z": "fd48a594.d8abb8",
        "group": "725269ab.9f1238",
        "order": 5,
        "width": 0,
        "height": 0,
        "name": "",
        "label": "Counter",
        "format": "{{msg.payload}}",
        "layout": "row-spread",
        "x": 1260,
        "y": 600,
        "wires": []
    },
    {
        "id": "10db7078.fa166",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "Sale LatLong",
        "func": "\nmsg.latitude = msg.payload.iss_position.latitude;\nmsg.longitude = msg.payload.iss_position.longitude;\n//msg.payload = []//\n//msg.payload =msg.latitude;\n//msg.topic=\"Lat\";\nnode.send(msg)\nmsg.topic=\"Lon\";\nmsg.payload =msg.longitude;\n//msg.payload[1] =msg.longitude;\n//\"\"+msg.latitude+\",\"+msg.longitude;\nglobal.set(\"oldlatitude\",global.get(\"latitude\"));\nglobal.set(\"oldlongitude\",global.get(\"longitude\"));\n\nglobal.set(\"latitude\",msg.latitude)\nglobal.set(\"longitude\",msg.longitude)\n\n\nreturn msg;",
        "outputs": 1,
        "noerr": 0,
        "x": 530,
        "y": 140,
        "wires": [
            [
                "377e589b.9e62b8",
                "b197abf7.9a1b88"
            ]
        ]
    },
    {
        "id": "4ad4ceb9.e3288",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "Time",
        "func": "function unixTime(unixtime) {\n\n    var u = new Date(unixtime);\n\n      return u.getUTCFullYear() +\n        '-' + ('0' + u.getUTCMonth()).slice(-2) +\n        '-' + ('0' + u.getUTCDate()).slice(-2) + \n        ' ' + ('0' + u.getUTCHours()).slice(-2) +\n        ':' + ('0' + u.getUTCMinutes()).slice(-2) +\n        ':' + ('0' + u.getUTCSeconds()).slice(-2) +\n        '.' + (u.getUTCMilliseconds() / 1000).toFixed(3).slice(2, 5) \n    };\n    var newmsg ={}\nnewmsg.payload = unixTime(parseInt(msg.payload.ts))\nreturn newmsg;",
        "outputs": 1,
        "noerr": 0,
        "x": 1050,
        "y": 560,
        "wires": [
            [
                "f92b0184.56afe"
            ]
        ]
    },
    {
        "id": "f92b0184.56afe",
        "type": "ui_text",
        "z": "fd48a594.d8abb8",
        "group": "725269ab.9f1238",
        "order": 5,
        "width": 0,
        "height": 0,
        "name": "",
        "label": "Msg Time",
        "format": "{{msg.payload}}",
        "layout": "row-spread",
        "x": 1260,
        "y": 560,
        "wires": []
    },
    {
        "id": "64c38273.fc9a3c",
        "type": "ui_button",
        "z": "fd48a594.d8abb8",
        "name": "",
        "group": "1712fb3a.6354f5",
        "order": 6,
        "width": 0,
        "height": 0,
        "passthru": false,
        "label": "Turn Candle Blue",
        "color": "",
        "bgcolor": "",
        "icon": "",
        "payload": "\"off\"",
        "payloadType": "str",
        "topic": "",
        "x": 130,
        "y": 680,
        "wires": [
            []
        ]
    },
    {
        "id": "377e589b.9e62b8",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "Distance",
        "func": "function getDistanceFromLatLonInKm(lat1,lon1,lat2,lon2) {\n  var R = 6371; // Radius of the earth in km\n  var dLat = deg2rad(lat2-lat1);  // deg2rad below\n  var dLon = deg2rad(lon2-lon1); \n  var a = \n    Math.sin(dLat/2) * Math.sin(dLat/2) +\n    Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * \n    Math.sin(dLon/2) * Math.sin(dLon/2)\n    ; \n  var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); \n  var d = R * c; // Distance in km\n  return d;\n}\n\nfunction deg2rad(deg) {\n  return deg * (Math.PI/180)\n}\nlat=global.get(\"latitude\");\nlon=global.get(\"longitude\");\nolat=global.get(\"oldlatitude\");\nolon=global.get(\"oldlongitude\");\n\n\ndistance =getDistanceFromLatLonInKm(olat,olon,lat,lon)\n//node.warn(speed)\nmsg.payload = distance.toFixed(2);\nmsg.distance = distance;\nglobal.set(\"distance\",distance);\nreturn msg;",
        "outputs": 1,
        "noerr": 0,
        "x": 720,
        "y": 80,
        "wires": [
            [
                "e95ec0b5.ee373",
                "f59e5fed.da19f"
            ]
        ]
    },
    {
        "id": "e95ec0b5.ee373",
        "type": "ui_text",
        "z": "fd48a594.d8abb8",
        "group": "1712fb3a.6354f5",
        "order": 4,
        "width": 0,
        "height": 0,
        "name": "",
        "label": "Distance in Km( 10Sec)",
        "format": "{{msg.payload}}",
        "layout": "row-spread",
        "x": 970,
        "y": 80,
        "wires": []
    },
    {
        "id": "b197abf7.9a1b88",
        "type": "ui_chart",
        "z": "fd48a594.d8abb8",
        "name": "",
        "group": "1712fb3a.6354f5",
        "order": 0,
        "width": 0,
        "height": 0,
        "label": "Longitude",
        "chartType": "line",
        "legend": "false",
        "xformat": "HH:mm:ss",
        "interpolate": "linear",
        "nodata": "",
        "dot": false,
        "ymin": "",
        "ymax": "",
        "removeOlder": "10",
        "removeOlderPoints": "",
        "removeOlderUnit": "60",
        "cutout": 0,
        "useOneColor": false,
        "colors": [
            "#1f77b4",
            "#aec7e8",
            "#ff7f0e",
            "#2ca02c",
            "#98df8a",
            "#d62728",
            "#ff9896",
            "#9467bd",
            "#c5b0d5"
        ],
        "x": 727.2222222222222,
        "y": 123.88888888888889,
        "wires": [
            [],
            []
        ]
    },
    {
        "id": "ae90b13e.52dcb",
        "type": "ui_text",
        "z": "fd48a594.d8abb8",
        "group": "1712fb3a.6354f5",
        "order": 4,
        "width": 0,
        "height": 0,
        "name": "",
        "label": "Speed in Km/H",
        "format": "{{msg.payload}}",
        "layout": "row-spread",
        "x": 940,
        "y": 40,
        "wires": []
    },
    {
        "id": "f59e5fed.da19f",
        "type": "function",
        "z": "fd48a594.d8abb8",
        "name": "Calulate SPEED",
        "func": "// Home work! Calulate the speed in Km/H of the ISS\n// based on the distance \n//msg.distance = IIS traveld in 10 Sec\n\nmsg.payload = \"???\"\nreturn msg;",
        "outputs": 1,
        "noerr": 0,
        "x": 740,
        "y": 40,
        "wires": [
            [
                "ae90b13e.52dcb"
            ]
        ]
    },
    {
        "id": "cac9bc57.ecc54",
        "type": "ui_group",
        "z": "",
        "name": "ISS Area",
        "tab": "b82f1a8f.2f1218",
        "order": 1,
        "disp": true,
        "width": "12"
    },
    {
        "id": "1712fb3a.6354f5",
        "type": "ui_group",
        "z": "",
        "name": "ISS Infos",
        "tab": "b82f1a8f.2f1218",
        "order": 2,
        "disp": true,
        "width": "6"
    },
    {
        "id": "725269ab.9f1238",
        "type": "ui_group",
        "z": "",
        "name": "FromPI",
        "tab": "b82f1a8f.2f1218",
        "order": 3,
        "disp": true,
        "width": "6"
    },
    {
        "id": "b82f1a8f.2f1218",
        "type": "ui_tab",
        "z": "",
        "name": "ISS Area",
        "icon": "dashboard"
    }
]
