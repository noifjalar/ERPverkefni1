page 50000 RadioShowList
{
    Caption = 'Radio Show List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = RadioShow;
    CardPageId = RadioShowCard;

    layout
    {
        area(Content)
        {
            repeater(Namee)
            {
                field("No."; rec."No") { ApplicationArea = All; }
                field("Radio Show Type"; rec."RadioShowType") { ApplicationArea = All; }
                field("Name"; rec."Name") { ApplicationArea = All; }
                field("Host No"; rec."HostNo") { ApplicationArea = All; }
                field("Host Name"; rec."HostName") { ApplicationArea = All; }
                field("Run Time"; rec."RunTime") { ApplicationArea = All; }

            }
        }
    }



}

