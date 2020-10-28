page 50002 "Radio Show Type List_PKT"
{
    Caption = 'Radio Show Type List';
    PageType = List;
    UsageCategory = Administration;
    ApplicationArea = All;
    SourceTable = "RadioShowTypes";


    layout
    {
        area(Content)
        {
            repeater(Namedded)
            {

                field("Code"; rec."Code") {  }
                field("Description"; rec."Description") {  }

            }
        }
    }


}