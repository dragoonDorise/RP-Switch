import QtQuick 2.12

  Rectangle {
      id: header
      color: headerCSS.background
      width: headerCSS.width
      height: headerCSS.height-headerHeightCorrection // Zoom option
      anchors.top: parent.top      
      
      Rectangle{
        id: header__battery
        width:84
        color:"transparent"
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 34
        anchors.rightMargin: aspectRatio === 43 ? 16 : 80
        visible: headerHeightCorrection === 0 ? 1 : 0;
        Text{
            id: header__battery_number
            text: Math.floor(api.device.batteryPercent*100)+"%"    
            anchors { top: parent.top }   
            color: theme.title
            font.pixelSize: aspectRatio === 43 ? 18 : 32
        }      
        
        Image {
              id: header__battery_icon
              height: aspectRatio === 43 ? 16 : 30                 
              fillMode: Image.PreserveAspectFit
              source: "../assets/icons/battery.png"
              asynchronous: true      
              anchors.topMargin: aspectRatio === 43 ? 3 : 5
              anchors { top: parent.top }   
              anchors.left: header__battery_number.right
              anchors.leftMargin: 4
              z:3999
              
         }        
      }
      
      
      Text{
          id: header__time
          text: Qt.formatTime(new Date(), "hh:mm")          
          anchors.right: header__battery.left
          anchors.top: parent.top
          anchors.topMargin: 34
          anchors.rightMargin: aspectRatio === 43 ? 12 : 24
          color: theme.title
          font.pixelSize: aspectRatio === 43 ? 18 : 32
          visible: headerHeightCorrection === 0 ? 1 : 0;
      }      
      
  }