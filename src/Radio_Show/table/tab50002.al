table 50002 RadioShowTypes
{
    // DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; code[20]) { }
        field(2; "Description"; Text[50]) { }


    }
    keys
    {
        key(PK; Description)
        {
            Clustered = true;
        }


        key(UniqueKey; Code)
        {
            Unique = true;
        }
    }
}

