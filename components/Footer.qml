import QtQuick 2.12
    Rectangle {
    property var buttonSize: aspectRatio === 43 ? 90 : 120*1.4
    property var buttonTextSize: aspectRatio === 43 ? 14 : 18*1.4
    property var buttonRoundSize: aspectRatio === 43 ? 20 : 40*1.4
    property var buttonRoundTextSize: aspectRatio === 43 ? 12 : 22*1.4
        id: footer
        color: footerCSS.background
        width: footerCSS.width
        height: footerCSS.height
        anchors.top: main.bottom
        
        Rectangle{
          id: footer__border
          anchors.top: parent.top
          anchors.left: parent.left
          anchors.leftMargin: 20
          width: parent.width-40;
          height:1
          color: theme.text
        }
        
       // Image {
       //     id: rp2
       //     width: 36
       //     fillMode: Image.PreserveAspectFit
       //     source: "../assets/icons/"+ theme.footer_icon
       //     asynchronous: true        
       //     anchors.top: parent.top
       //     anchors.left: parent.left
       //     anchors.leftMargin: 42
       //     anchors.topMargin: 14
       // }      
        
        
    
    Rectangle{
          id: footer__legend
          color:"transparent"
          anchors.right: parent.right
          width: vw(100)
          height: parent.height
          anchors.verticalCenter: parent.verticalCenter
          
          Rectangle{
              id: footer__legend_B
              anchors.verticalCenter: parent.verticalCenter
              anchors.right: parent.right              
              width: buttonSize
              height:parent.height
              color:"transparent"
              anchors.rightMargin: aspectRatio === 43 ? 0 : 40
              Rectangle{
                id: footer__full_button_B
                anchors.right: parent.right
                height:parent.height
                width:100
                color:"transparent"
                //anchors.centerIn:  aspectRatio = 43 ? none : parent
                Rectangle{
                    id: footer__button_B
                    height:buttonRoundSize
                    width:buttonRoundSize
                    color:"#444"
                    radius:buttonRoundSize
                    anchors.verticalCenter: parent.verticalCenter
                    Text{
                         text:"B"
                         color:"white"                    
                         anchors.verticalCenter: parent.verticalCenter
                         anchors.horizontalCenter: parent.horizontalCenter
                         font.pixelSize: buttonRoundTextSize
                    }                  
                }
                
                Text{
                     text:"Back"
                     color: theme.text                       
                     anchors.verticalCenter: parent.verticalCenter
                     anchors.left: footer__button_B.right
                     anchors.leftMargin: 4
                     font.pixelSize: buttonTextSize
                     
                }
              
              }
                            
          }
          
                    
          Rectangle{
            id: footer__legend_A
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: footer__legend_B.left
            width: buttonSize
            height:parent.height
            color:"transparent"
            
            Rectangle{
            id: footer__full_button_A
            anchors.right: parent.right
            height:parent.height
            width:100
            color:"transparent"
            anchors.centerIn:  aspectRatio = 43 ? none : parent
            Rectangle{
              id: footer__button_A
              height:buttonRoundSize
              width:buttonRoundSize
              color:"#444"
              radius:buttonRoundSize
              anchors.verticalCenter: parent.verticalCenter
              Text{
                 text:"A"
                 color:"white"                    
                 anchors.verticalCenter: parent.verticalCenter
                 anchors.horizontalCenter: parent.horizontalCenter
                 font.pixelSize: buttonRoundTextSize
              }                  
            }
            
            Text{
               text:"OK"
               color: theme.text                       
               anchors.verticalCenter: parent.verticalCenter
               anchors.left: footer__button_A.right
               anchors.leftMargin: 4
               font.pixelSize: buttonTextSize
               
            }
            
            }
                  
          }          
    
          Rectangle{
            id: footer__legend_Y
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: footer__legend_A.left
            width: buttonSize
            height:parent.height
            color:"transparent"
            
              Rectangle{
              id: footer__full_button_Y
              anchors.right: parent.right
              height:parent.height
              width:100
              color:"transparent"
              anchors.centerIn:  aspectRatio = 43 ? none : parent
              Rectangle{
                id: footer__button_Y
                height:buttonRoundSize
                width:buttonRoundSize
                color:"#444"
                radius:buttonRoundSize
                anchors.verticalCenter: parent.verticalCenter
                Text{
                 text:"Y"
                 color:"white"                    
                 anchors.verticalCenter: parent.verticalCenter
                 anchors.horizontalCenter: parent.horizontalCenter
                 font.pixelSize: buttonRoundTextSize
                }                  
              }
              
              Text{
                 text:"Zoom"
                 color: theme.text                       
                 anchors.verticalCenter: parent.verticalCenter
                 anchors.left: footer__button_Y.right
                 anchors.leftMargin: 4
                 font.pixelSize: buttonTextSize
                 
              }
            
            }
                
          }          
          
          Rectangle{
            id: footer__legend_X
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: footer__legend_Y.left
            width: buttonSize
            height:parent.height
            color:"transparent"
            visible: currentPage === 'HomePage' ? 0 : 1 ;
              Rectangle{
              id: footer__full_button_X
              anchors.right: parent.right
              height:parent.height
              width:100
              color:"transparent"
              anchors.centerIn:  aspectRatio = 43 ? none : parent
              Rectangle{
              id: footer__button_X
              height:buttonRoundSize
              width:buttonRoundSize
              color:"#444"
              radius:buttonRoundSize
              anchors.verticalCenter: parent.verticalCenter
              Text{
               text:"X"
               color:"white"                    
               anchors.verticalCenter: parent.verticalCenter
               anchors.horizontalCenter: parent.horizontalCenter
               font.pixelSize: buttonRoundTextSize
              }                  
              }
              
              Text{
               text:"Fav"
               color: theme.text                       
               anchors.verticalCenter: parent.verticalCenter
               anchors.left: footer__button_X.right
               anchors.leftMargin: 4
               font.pixelSize: buttonTextSize
               
              }
            
            }
              
          }          
    
    
          
          Rectangle{
            id: footer__legend_R
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: footer__legend_X.left
            width: buttonSize
            height:parent.height
            color:"transparent"
            visible: currentPage === 'HomePage' ? 0 : 1 ;
              Rectangle{
              id: footer__full_button_R
              anchors.right: parent.right
              height:parent.height
              width:100
              color:"transparent"
              anchors.centerIn:  aspectRatio = 43 ? none : parent
              Rectangle{
              id: footer__button_R
              height:buttonRoundSize
              width:buttonRoundSize
              color:"#444"
              radius:buttonRoundSize
              anchors.verticalCenter: parent.verticalCenter
              Text{
               text:"R"
               color:"white"                    
               anchors.verticalCenter: parent.verticalCenter
               anchors.horizontalCenter: parent.horizontalCenter
               font.pixelSize: buttonRoundTextSize
              }                  
              }
              
              Text{
               text:"Next"
               color: theme.text                       
               anchors.verticalCenter: parent.verticalCenter
               anchors.left: footer__button_R.right
               anchors.leftMargin: 4
               font.pixelSize: buttonTextSize
               
              }
            
            }
              
          }          
    
          Rectangle{
            id: footer__legend_L
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: footer__legend_R.left
            width: buttonSize
            height:parent.height
            color:"transparent"
            visible: currentPage === 'HomePage' ? 0 : 1 ;
              Rectangle{
              id: footer__full_button_L
              anchors.right: parent.right
              height:parent.height
              width:100
              color:"transparent"
              anchors.centerIn:  aspectRatio = 43 ? none : parent
              Rectangle{
              id: footer__button_L
              height:buttonRoundSize
              width:buttonRoundSize
              color:"#444"
              radius:buttonRoundSize
              anchors.verticalCenter: parent.verticalCenter
              Text{
               text:"L"
               color:"white"                    
               anchors.verticalCenter: parent.verticalCenter
               anchors.horizontalCenter: parent.horizontalCenter
               font.pixelSize: buttonRoundTextSize
              }                  
              }
              
              Text{
               text:"Prev"
               color: theme.text                       
               anchors.verticalCenter: parent.verticalCenter
               anchors.left: footer__button_L.right
               anchors.leftMargin: 4
               font.pixelSize: buttonTextSize
               
              }
            
            }
            
          }          
          
    
    
      }
        
        
    }    
    