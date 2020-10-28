import QtQuick 2.12
import QtQuick.Controls 2.5

Item
{
    id: windowITTID

    Image
    {
        x:0
        y:0
        id: ittBG;
        source: "pics/ittBG.png";
        width: Settings.myScaleX*Settings.ittW;
        height:Settings.myScaleY*Settings.ittH;
    }
    Label
    {
        id: ittSliderValueTextID1
        color:Settings.fittTextColors(Settings.ittSliderValue1)
        x: Settings.myScaleX*Settings.ittSliderTextX1;
        y: Settings.myScaleY*(Settings.ittSliderTailY1+Settings.ittSliderTailH1);
        width: Settings.myScaleX*Settings.sliderTextW;
        height: Settings.myScaleY*Settings.sliderTextH;
        text:Settings.ittSliderValue1
        font.family: Settings.myFontFamily
        font.pixelSize: Settings.thicknessFont*Settings.myScaleY
        font.bold:true
        background:
        Rectangle
        {
            color: Settings.fittBackColors(Settings.ittSliderValue1)
            border.color: Settings.fittBorderColors(Settings.ittSliderValue1)
            border.width: Settings.thicknessBorder;
        }
        horizontalAlignment: Text.AlignHCenter;
        verticalAlignment: Text.AlignVCenter;
    }
    Label
    {
        id: ittSliderValueTextID2
        color:Settings.fittTextColors(Settings.ittSliderValue2)
        x: Settings.myScaleX*Settings.ittSliderTextX2;
        y: Settings.myScaleY*(Settings.ittSliderTailY2+Settings.ittSliderTailH2);
        width: Settings.myScaleX*Settings.sliderTextW;
        height: Settings.myScaleY*Settings.sliderTextH;
        text:Settings.ittSliderValue2
        font.family: Settings.myFontFamily
        font.pixelSize: Settings.thicknessFont*Settings.myScaleY
        font.bold:true
        background:
        Rectangle
        {
            color: Settings.fittBackColors(Settings.ittSliderValue2)
            border.color: Settings.fittBorderColors(Settings.ittSliderValue2)
            border.width: Settings.thicknessBorder;
        }
        horizontalAlignment: Text.AlignHCenter;
        verticalAlignment: Text.AlignVCenter;
    }

    Image
    {
        id: ittSlider1;
        source: "pics/Slider1"+Settings.fittStringColors(Settings.ittSliderValue1)+".png"
        x:Settings.myScaleX*Settings.ittSliderX1;
        y:Settings.myScaleY*Settings.ittSliderY1;
        width: Settings.myScaleX*Settings.sliderW;
        height:Settings.myScaleY*Settings.sliderH;
    }
    Image
    {
        id: ittSlider2;
        source: "pics/Slider2"+Settings.fittStringColors(Settings.ittSliderValue2)+".png"
        x:Settings.myScaleX*Settings.ittSliderX2;
        y:Settings.myScaleY*Settings.ittSliderY2;
        width: Settings.myScaleX*Settings.sliderW;
        height:Settings.myScaleY*Settings.sliderH;
    }

    Image
    {
        id: ittSliderTail1;
        source: "pics/SliderTail1"+Settings.fittStringColors(Settings.ittSliderValue1)+".png"
        x:Settings.myScaleX*Settings.ittSliderX1;
        y:Settings.myScaleY*Settings.ittSliderTailY1;
        width: Settings.myScaleX*Settings.sliderW;
        height:Settings.myScaleY*Settings.ittSliderTailH1;
    }
    Image
    {
        id: ittSliderTail2;
        source: "pics/SliderTail2"+Settings.fittStringColors(Settings.ittSliderValue2)+".png"
        x:Settings.myScaleX*Settings.ittSliderX2;
        y:Settings.myScaleY*Settings.ittSliderTailY2;
        width: Settings.myScaleX*Settings.sliderW;
        height:Settings.myScaleY*Settings.ittSliderTailH2;
    }



}


