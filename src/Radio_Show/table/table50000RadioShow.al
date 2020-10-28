table 50000 RadioShow


{
    DataClassification = ToBeClassified;
    DrillDownPageId = RadioShowList;
    LookupPageId = RadioShowList;

    

    fields
    {
        field(1; "No"; code[20]){ }
        field(2; "RadioShowType"; code[10])
        {
            TableRelation = RadioShowType;
        }
        field(3; "Name"; Text[50]) { }
        field(4; "HostNo"; code[20]) { }
        field(5; "HostName"; Text[50]) { }
        field(6; "RunTime"; Duration) { }
        field(7; "Average Listners"; Decimal) { }
        field(8; "Audience Share"; Decimal) { }
        field(9; "Advertising revenue"; Decimal) { }
        field(10; "Royalty Cost"; Decimal) { }






    }
}