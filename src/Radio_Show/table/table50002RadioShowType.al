table 50002 RadioShowType
// LookupPageId
{
    DataClassification = ToBeClassified;
    DrillDownPageId = RadioShowTypeList;
    LookupPageId = RadioShowTypeList;

    fields
    {
        field(1; "Code"; code[20]) { }
        field(2; "Description"; Text[50]) { }


    }
    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }


        // key(UniqueKey; Code)
        // {
        //     Unique = true;
        // }
    }
}

