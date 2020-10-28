//110=80   105=142   100=202  95=264  90=325  80=386  70=447  60=509   50=570   40=631   30=692    20=751   %650

//1290/1185=1.0886    1080/891=1.2121   1185/173=6.8497     891/217=4.1060    738,932     612,932
//6.8497  *  738  =   1290 ==>  1290/6.8497=188.3294        188.3294/738=0.2552
//4.1060  *  932  =   1080 ==>  1080/4.1060=263.0297        263.0297/932=0.2822
//map  1547*1080   ==>  860*818   ==> 860/1185=0.7257    818/891=0.9181     0.7257*1290=936   0.9181*1080=992    936/1547=0.6050   992/1080=0.9185

////////////////////////////////////////////////////////////////////////////////////
pragma Singleton
import QtQuick 2.0
QtObject
{
    readonly property color myColorRed: Qt.rgba(238/256, 56/256, 56/256, 1);
    readonly property color myColorGreen: Qt.rgba(152/256, 203/256, 79/256, 1);//Qt.rgba(95/256, 187/256, 70/256, 1);
    readonly property color myColorBlue: Qt.rgba(0, 185/256, 241/256, 1);
    readonly property color myColorWhite: Qt.rgba(1, 1, 1, 1);
    readonly property color myColorBlack: Qt.rgba(35/256, 31/256, 32/256, 1);
    readonly property color myColorYellow: Qt.rgba(255/256, 242/256, 0/256, 1);

    property string myStringRed:"Red"
    property string myStringGreen:"Green"
    property string myStringBlue:"Blue"
    property string myStringWhite:"White"
    property string myStringYellow:"Yellow"

    readonly property double myScaleXX: 0.2552
    readonly property double myScaleYY: 0.2822

    property double myScaleX: myScaleXX
    property double myScaleY: myScaleYY
    property double myScale: Math.min(Settings.myScaleX,Settings.myScaleY)

    property int thicknessFont: 270;
    property int thicknessBorder: 2
    property int thicknessNeighbour: 15

    property int myDelay: 1000
    property int myStepN1: 5
    property int myStepITT: 50

    property string myFontFamily:"Franklin Gothic Medium"

    readonly property int frmW: 1290
    readonly property int frmH: 1080

    readonly property int sliderW: 64
    readonly property int sliderH: 30
    readonly property int sliderTextH:80;
    readonly property int sliderTextW:240;

///////////ittRange//////////////////////////////////////////////////////////
    readonly property int ittX: 0
    readonly property int ittY: 0
    readonly property int ittW: 612
    readonly property int ittH: 932
    readonly property int ittRange1:100;
    readonly property int ittRange2:600;
    readonly property int ittRange3:800;
    readonly property int ittRange4:825;
    readonly property int ittRange5:900;
    readonly property int ittRange6:1050;

///////////n1Range//////////////////////////////////////////////////////////
    readonly property int n1X: 0
    readonly property int n1Y: 0
    readonly property int n1W: 738
    readonly property int n1H: 932
    readonly property int n1Range1:20;
    readonly property int n1Range2:90;
    readonly property int n1Range3:105;
    readonly property int n1Range4:110;

///////////ittMarz////////////////////////////////////////////////////////////////
    readonly property int ittMarz1:825;
    readonly property int ittMarz2:649;
    readonly property int ittMarz3:307;
    readonly property int ittMarz4:273;
    readonly property int ittMarz5:180;
    readonly property int ittMarz6:41;
    readonly property int ittMarzCol1:154;
    readonly property int ittMarzCol2:460;
    readonly property int ittMarzSlider1:150;
    readonly property int ittMarzSlider2:464;

///////////n1Marz////////////////////////////////////////////////////////////////
    readonly property int n1Marz1:812;
    readonly property int n1Marz2:808;
    readonly property int n1Marz3:381;
    readonly property int n1Marz4:136;
    readonly property int n1MarzCol1:182;
    readonly property int n1MarzCol2:557;
    readonly property int n1MarzSlider1:178;
    readonly property int n1MarzSlider2:561;

/////////color functions//////////////////////////////////////////////
    function fittStringColors(ittSliderValue)
    {
        if (ittSliderValue>=ittRange1 && ittSliderValue<ittRange3)
            return myStringWhite;
        else if (ittSliderValue>=ittRange3 && ittSliderValue<ittRange4)
            return myStringYellow;
        else //if (ittSliderValue>=ittRange4 && ittSliderValue<ittRange6)
            return myStringRed;
        //else return "qwe";
    }
    function fittTextColors(ittSliderValue)
    {
        if (ittSliderValue>=ittRange1 && ittSliderValue<ittRange3)
            return myColorGreen;
        else if (ittSliderValue>=ittRange3 && ittSliderValue<ittRange4)
            return myColorBlack;
        else //if (ittSliderValue>=ittRange4 && ittSliderValue<ittRange6)
            return myColorWhite;
        //else return "qwe";
    }

    function fittBackColors(ittSliderValue)
    {
        if (ittSliderValue>=ittRange1 && ittSliderValue<ittRange3)
            return myColorBlack;
        else if (ittSliderValue>=ittRange3 && ittSliderValue<ittRange4)
            return myColorYellow;
        else //if (ittSliderValue>=ittRange4 && ittSliderValue<ittRange6)
            return myColorRed;
        //else return "qwe";
    }
    function fittBorderColors(ittSliderValue)
    {
        if (ittSliderValue>=ittRange1 && ittSliderValue<ittRange3)
            return myColorWhite;
        else if (ittSliderValue>=ittRange3 && ittSliderValue<ittRange4)
            return myColorYellow;
        else //if (ittSliderValue>=ittRange4 && ittSliderValue<ittRange6)
            return myColorRed;
        //else return "qwe";
    }

    function fN1StringColors(n1SliderValue)
    {
        if (n1SliderValue>=n1Range1 && n1SliderValue<n1Range3)
            return myStringWhite
        else return myStringRed
    }

    function fN1TextColors(n1SliderValue)
    {
        if (n1SliderValue>=n1Range1 && n1SliderValue<n1Range3)
            return myColorGreen
        else return myColorWhite
    }
    function fN1BackColors(n1SliderValue)
    {
        if (n1SliderValue>=n1Range1 && n1SliderValue<n1Range3)
            return myColorBlack
        else return myColorRed
    }
    function fN1BorderColors(n1SliderValue)
    {
        if (n1SliderValue>=n1Range1 && n1SliderValue<n1Range3)
            return myColorWhite
        else return myColorRed
    }
////////////marz functions//////////////////////////////////////////////////////
    function fN1Bug(n1BugValue)
    {
        if (n1BugValue>=n1Range1 && n1BugValue<n1Range2)
            return n1Marz2-(n1Marz2-n1Marz3)*(n1BugValue-n1Range1)/(n1Range2-n1Range1)-n1BugH/2
        else
            return n1Marz3-(n1Marz3-n1Marz4)*(n1BugValue-n1Range2)/n1Range1-n1BugH/2 ;
    }

    function fittSlider(ittSliderValue)
    {
        if (ittSliderValue>=ittRange1 && ittSliderValue<ittRange2)
            return ittMarz1-(ittMarz1-ittMarz2)*(ittSliderValue-ittRange1)/(ittRange2-ittRange1)
        else if (ittSliderValue>=ittRange2 && ittSliderValue<ittRange3)
            return ittMarz2-(ittMarz2-ittMarz3)*(ittSliderValue-ittRange2)/(ittRange3-ittRange2)
        else if (ittSliderValue>=ittRange3 && ittSliderValue<ittRange4)
            return ittMarz3-(ittMarz3-ittMarz4)*(ittSliderValue-ittRange3)/(ittRange4-ittRange3)
        else if (ittSliderValue>=ittRange4 && ittSliderValue<ittRange5)
            return ittMarz4-(ittMarz4-ittMarz5)*(ittSliderValue-ittRange4)/(ittRange5-ittRange4)
        else
            return ittMarz5-(ittMarz5-ittMarz6)*(ittSliderValue-ittRange5)/(ittRange6-ittRange5);
    }

    function fN1Slider(n1SliderValue)
    {
        if (n1SliderValue>=n1Range1 && n1SliderValue<n1Range2)
            return n1Marz2-(n1Marz2-n1Marz3)*(n1SliderValue-n1Range1)/(n1Range2-n1Range1)
        else return n1Marz3-(n1Marz3-n1Marz4)*(n1SliderValue-n1Range2)/n1Range1;
    }

////////////timer functions/////////////////////////////////////////////////
    function fN1BugTimer(n1BugValue)
    {
        if (n1BugValue<n1Range4)
           return n1BugValue+myStepN1;
        else
           return n1Range1;
    }

    function fittTimer(ittSliderValue)
    {
        if (ittSliderValue<=ittRange3-myStepITT)
            return ittSliderValue+myStepITT;
        else if (ittSliderValue>ittRange3-myStepITT && ittSliderValue<=ittRange4-1)
            return ittSliderValue+1
        else if (ittSliderValue>ittRange4-1 && ittSliderValue<=ittRange6-myStepITT/2)
            return ittSliderValue+myStepITT/2;
        else
            return ittRange1;
    }
    function fN1Timer(n1SliderValue)
    {
        if (n1SliderValue>=n1Range1 && n1SliderValue<n1Range3)
            return n1SliderValue+myStepN1;
        else if(n1SliderValue>=n1Range3 && n1SliderValue<n1Range4)
            return n1SliderValue+1
        else
            return n1Range1;
    }

////////////n1Bug///////////////////////////////////////////////////////////
    readonly property int n1BugW: 34
    readonly property int n1BugH: 69

    property int n1BugValue1: 85
    readonly property int n1BugX1: n1MarzCol1-n1BugW
    readonly property int n1BugY1: fN1Bug(n1BugValue1);

    property int n1BugValue2: 40
    readonly property int n1BugX2: n1MarzCol2
    readonly property int n1BugY2: fN1Bug(n1BugValue2);

/////////////ittSlider//////////////////////////////////////////////////////////
    property int ittSliderValue1: 100
    readonly property int ittSliderX1: ittMarzSlider1-sliderW
    readonly property int ittSliderY1: fittSlider(ittSliderValue1)
    readonly property int ittSliderTailY1: ittSliderY1+sliderH;
    readonly property int ittSliderTailH1: ittMarz1-ittSliderY1-sliderH/2;
    readonly property int ittSliderTextX1:sliderH;

    property int ittSliderValue2: 300
    readonly property int ittSliderX2: ittMarzSlider2
    readonly property int ittSliderY2: fittSlider(ittSliderValue2)
    readonly property int ittSliderTailY2: ittSliderY2+sliderH;
    readonly property int ittSliderTailH2: ittMarz1-ittSliderY2-sliderH/2;
    readonly property int ittSliderTextX2: ittW-sliderTextW-sliderH;

/////////////n1Slider//////////////////////////////////////////////////////////
    property int n1SliderValue1: 50
    readonly property int n1SliderX1: n1MarzSlider1-sliderW
    readonly property int n1SliderY1: fN1Slider(n1SliderValue1)
    readonly property int n1SliderTailY1: n1SliderY1+sliderH;
    readonly property int n1SliderTailH1: n1Marz2-n1SliderY1-sliderH/2;
    readonly property int n1SliderTextX1:sliderH;

    property int n1SliderValue2: 40
    readonly property int n1SliderX2: n1MarzSlider2
    readonly property int n1SliderY2: fN1Slider(n1SliderValue2)
    readonly property int n1SliderTailY2: n1SliderY2+sliderH;
    readonly property int n1SliderTailH2: n1Marz2-n1SliderY2-sliderH/2;
    readonly property int n1SliderTextX2: n1W-sliderTextW-sliderH;

}
