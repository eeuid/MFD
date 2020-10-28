import QtQuick 2.12
import QtQuick.Controls 2.5

Item
{
    id: windowN1ID

    Image
    {
        x:0
        y:0
        id: n1BG;
        source: "pics/n1BG.png";
        width: Settings.myScaleX*Settings.n1W;
        height:Settings.myScaleY*Settings.n1H;
    }
    Label
    {
        id: n1SliderValueTextID1
        color: Settings.fN1TextColors(Settings.n1SliderValue1)
        x: Settings.myScaleX*Settings.n1SliderTextX1;
        y: Settings.myScaleY*(Settings.n1SliderTailY1+Settings.n1SliderTailH1);
        width: Settings.myScaleX*Settings.sliderTextW;
        height: Settings.myScaleY*Settings.sliderTextH;
        text:Settings.n1SliderValue1
        font.family: Settings.myFontFamily
        font.pixelSize: Settings.thicknessFont*Settings.myScaleY
        font.bold:true
        background:
        Rectangle
        {
            color: Settings.fN1BackColors(Settings.n1SliderValue1)
            border.color: Settings.fN1BorderColors(Settings.n1SliderValue1)
            border.width: Settings.thicknessBorder;
        }
        horizontalAlignment: Text.AlignHCenter;
        verticalAlignment: Text.AlignVCenter;
    }
    Label
    {
        id: n1SliderValueTextID2
        color: Settings.fN1TextColors(Settings.n1SliderValue2)
        x: Settings.myScaleX*Settings.n1SliderTextX2;
        y: Settings.myScaleY*(Settings.n1SliderTailY2+Settings.n1SliderTailH2);
        width: Settings.myScaleX*Settings.sliderTextW;
        height: Settings.myScaleY*Settings.sliderTextH;
        text:Settings.n1SliderValue2
        font.family: Settings.myFontFamily
        font.pixelSize: Settings.thicknessFont*Settings.myScaleY
        font.bold:true
        background:
        Rectangle
        {
            color: Settings.fN1BackColors(Settings.n1SliderValue2)
            border.color: Settings.fN1BorderColors(Settings.n1SliderValue2)
            border.width: Settings.thicknessBorder;
        }
        horizontalAlignment: Text.AlignHCenter;
        verticalAlignment: Text.AlignVCenter;
    }
    Label
    {
        id: n1BugValueText
        color: Settings.myColorBlue;
        x: Settings.myScaleX*(Settings.n1W-Settings.sliderTextW)/2;
        y: Settings.myScaleY*(Settings.n1Marz4-Settings.sliderTextH/2);
        width: Settings.myScaleX*Settings.sliderTextW;
        height: Settings.myScaleY*Settings.sliderTextH;
        text:Settings.n1BugValue1
        font.family: Settings.myFontFamily
        font.pixelSize: Settings.thicknessFont*Settings.myScaleY
        font.bold:true
        background:
        Rectangle
        {
            color: Settings.myColorBlack;
            border.color: Settings.myColorWhite;
            border.width: Settings.thicknessBorder;
        }
        horizontalAlignment: Text.AlignHCenter;
        verticalAlignment: Text.AlignVCenter;
    }
    Image
    {
        id: n1BugBlue1;
        source: "pics/n1BugBlue.png";
        x:Settings.myScaleX*Settings.n1BugX1;
        y:Settings.myScaleY*Settings.n1BugY1;
        width: Settings.myScaleX*Settings.n1BugW;
        height:Settings.myScaleY*Settings.n1BugH;
     }
    Image
    {
        id: n1BugBlue2;
        source: "pics/n1BugBlue2.png";
        x:Settings.myScaleX*Settings.n1BugX2;
        y:Settings.myScaleY*Settings.n1BugY2;
        width: Settings.myScaleX*Settings.n1BugW;
        height:Settings.myScaleY*Settings.n1BugH;
    }
    Image
    {
        id: n1Slider1;
        source: "pics/Slider1"+Settings.fN1StringColors(Settings.n1SliderValue1)+".png"
        x:Settings.myScaleX*Settings.n1SliderX1;
        y:Settings.myScaleY*Settings.n1SliderY1;
        width: Settings.myScaleX*Settings.sliderW;
        height:Settings.myScaleY*Settings.sliderH;
    }
    Image
    {
        id: n1Slider2;
        source: "pics/Slider2"+Settings.fN1StringColors(Settings.n1SliderValue2)+".png"
        x:Settings.myScaleX*Settings.n1SliderX2;
        y:Settings.myScaleY*Settings.n1SliderY2;
        width: Settings.myScaleX*Settings.sliderW;
        height:Settings.myScaleY*Settings.sliderH;
    }
    Image
    {
        id: n1SliderTail1;
        source: "pics/SliderTail1"+Settings.fN1StringColors(Settings.n1SliderValue1)+".png"
        x:Settings.myScaleX*Settings.n1SliderX1;
        y:Settings.myScaleY*Settings.n1SliderTailY1;
        width: Settings.myScaleX*Settings.sliderW;
        height:Settings.myScaleY*Settings.n1SliderTailH1;
    }
    Image
    {
        id: n1SliderTail2;
        source: "pics/SliderTail2"+Settings.fN1StringColors(Settings.n1SliderValue2)+".png"
        x:Settings.myScaleX*Settings.n1SliderX2;
        y:Settings.myScaleY*Settings.n1SliderTailY2;
        width: Settings.myScaleX*Settings.sliderW;
        height:Settings.myScaleY*Settings.n1SliderTailH2;
    }



}


