import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.impl 2.3 //provides IconLabel
import QtMultimedia 5.12
import "."


Window
{
    id: wnd
    visible: true
    width: Settings.frmW
    height:Settings.frmH
    title: qsTr("MFD")
    flags: Qt.Window | Qt.FramelessWindowHint

    Video
    {
        id: video
        source: "pics/1.avi"
        x:Settings.myScaleX*(Settings.n1W+Settings.ittW+2*Settings.thicknessNeighbour)
        y:0
        width:Settings.frmW-Settings.myScaleX*(Settings.n1W+Settings.ittW+2*Settings.thicknessNeighbour)
        height:Settings.frmH

        fillMode :VideoOutput.PreserveAspectCrop//VideoOutput.Stretch//VideoOutput.PreserveAspectFit
        focus: true
        Keys.onSpacePressed: video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
        Keys.onLeftPressed: video.seek(video.position - 5000)
        Keys.onRightPressed: video.seek(video.position + 5000)
    }
    onAfterRendering: video.play()


    /*
    MediaPlayer
    {
        id: video
        source: "pics/1.avi"
        autoPlay: true
    }
    VideoOutput
    {
        source: video
        x:Settings.myScaleX*(Settings.n1W+Settings.ittW+2*Settings.thicknessNeighbour)
        y:0
        width:Settings.frmW-Settings.myScaleX*(Settings.n1W+Settings.ittW+2*Settings.thicknessNeighbour)
        height:Settings.frmH
        fillMode :VideoOutput.PreserveAspectCrop//VideoOutput.PreserveAspectFit//VideoOutput.Stretch
    }
    */

    Column
    {
        x:0;
        y:0;
        WindowN1
        {
            id: windowN1ID1
        }
    }
    Column
    {
        x:Settings.myScaleX*(Settings.n1W+Settings.thicknessNeighbour);
        y:0;
        WindowITT
        {
            id: windowITTID1
        }
    }

    Timer
    {
        id: timer
    }

    function delay(delayTime,cb) {
        timer.interval = delayTime;
        timer.repeat = true;
        timer.triggered.connect(cb);
        timer.start();
    }
    Timer
    {
        id: timer2
    }

    function delay2(delayTime,cb) {
        timer2.interval = delayTime;
        timer2.repeat = true;
        timer2.triggered.connect(cb);
        timer2.start();
    }
    Component.onCompleted:
    {
        /*delay2(10*Settings.myDelay,
                  function()
                  {
                      var xx=Math.random()/10
                      var yy=Math.random()/10
                      var xs= Math.random() >= 0.5;
                      var ys=Math.random() >= 0.5;
                      Settings.myScaleX=Settings.myScaleXX+ ((xs===true)?xx:-xx);
                      Settings.myScaleY=Settings.myScaleYY+ ((ys===true)?yy:-yy);
                  }
              )*/

        delay(Settings.myDelay,
                  function()
                  {
                      if (video.playbackState==MediaPlayer.StoppedState) video.play();
                      //////n1BugValue
                      Settings.n1BugValue1=Settings.fN1BugTimer(Settings.n1BugValue1)
                      Settings.n1BugValue2=Settings.fN1BugTimer(Settings.n1BugValue2)

                      ///////ittSliderValue
                      Settings.ittSliderValue1=Settings.fittTimer(Settings.ittSliderValue1)
                      Settings.ittSliderValue2=Settings.fittTimer(Settings.ittSliderValue2)

                      ///////n1SliderValue
                      Settings.n1SliderValue1=Settings.fN1Timer(Settings.n1SliderValue1)
                      Settings.n1SliderValue2=Settings.fN1Timer(Settings.n1SliderValue2)

                  }
             )
    }
}


