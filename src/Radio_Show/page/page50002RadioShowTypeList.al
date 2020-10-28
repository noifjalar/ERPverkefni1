page 50002 RadioShowTypeList
{
    Caption = 'Radio Show Types List';
    PageType = List;
    UsageCategory = Administration;
    ApplicationArea = All;
    SourceTable = "RadioShowType";


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