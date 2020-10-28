page 50001 RadioShowCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = RadioShow;
    Caption = 'Radio Show Card';
    

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; rec."No") { ApplicationArea = All; }
                field("Radio Show Type"; rec."RadioShowType") { ApplicationArea = All; }
                
                field("Name"; rec."Name") { ApplicationArea = All; }
                field("Run Time"; rec."RunTime") { ApplicationArea = All; }
                field("Host No."; rec."HostNo") { ApplicationArea = All; }
                field("Host Name"; rec."HostName") { ApplicationArea = All; }
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

