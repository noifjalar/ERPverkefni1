page 50001 "Radio Show Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = RadioShowList;
    Caption = 'Radio Show Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; rec."No.") { ApplicationArea = All; }
                field("Radio Show Type"; rec."Radio Show Type") { ApplicationArea = All; }
                
                field("Name"; rec."Name") { ApplicationArea = All; }
                field("Run Time"; rec."Run Time") { ApplicationArea = All; }
                field("Host No."; rec."Host No") { ApplicationArea = All; }
                field("Host Name"; rec."Host Name") { ApplicationArea = All; }
            }
            group(Statistics)
            {
                field("Average Listners"; rec."Average Listners") { ApplicationArea = All; }
                field("Audience Share"; rec."Audience Share") { ApplicationArea = All; }
                field("Advertising revenue"; rec."Advertising revenue") { ApplicationArea = All; }
                field("Royalty Cost"; rec."Royalty Cost") { ApplicationArea = All; }
            }
        }
    }
}

