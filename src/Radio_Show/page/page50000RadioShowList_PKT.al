page 50000 "Radio Show List_PKT"
{
    Caption = 'Radio Show List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = RadioShowList;

    layout
    {
        area(Content)
        {
            repeater(Namee)
            {
                field("No."; rec."No.") { ApplicationArea = All; }
                field("Radio Show Type"; rec."Radio Show Type") { ApplicationArea = All; }
                field("Name"; rec."Name") { ApplicationArea = All; }
                field("Run Time"; rec."Run Time") { ApplicationArea = All; }
                field("Host No."; rec."Host No") { ApplicationArea = All; }
                field("Host Name"; rec."Host Name") { ApplicationArea = All; }
                field("Average Listners"; rec."Average Listners") { ApplicationArea = All; }
                field("Audience Share"; rec."Audience Share") { ApplicationArea = All; }
                field("Advertising revenue"; rec."Advertising revenue") { ApplicationArea = All; }
                field("Royalty Cost"; rec."Royalty Cost") { ApplicationArea = All; }
               

              

                
            }
        }
    }



}

