codeunit 50000 RadioShowInstall
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    var
        archivedVersion: Text;
        RadioShow: Record RadioShow;
        RadioShowType: Record RadioShowType;
    begin
        archivedVersion := NavApp.GetArchiveVersion;
        if archivedVersion = '1.0.0.0' then begin
            NavApp.RestoreArchiveData(Database::RadioShow);
            NavApp.RestoreArchiveData(Database::RadioShowType);

            NavApp.DeleteArchiveData(Database::RadioShow);
            NavApp.DeleteArchiveData(Database::RadioShowType);
        end;

        if RadioShowType.IsEmpty() then
            InsertRadioShowTypes();
        if RadioShow.IsEmpty() then
            InsertRadioShows();

    end;

    local procedure InsertRadioShowTypes();
    begin
        InsertRadioShowType('CALL-IN', 'Talk and Listener In');
        InsertRadioShowType('MUSIC', 'Music and Misc');
        InsertRadioShowType('NEWS', 'In-Depth Stories');
        InsertRadioShowType('TALK', 'Mostly Talk ');


    end;

    local procedure InsertRadioShowType(ID: Code[10]; Description: Text[50]);
    var
        RadioShowType: Record RadioShowType;
    begin
        RadioShowType.Init();
        RadioShowType.Code := ID;
        RadioShowType.Description := Description;
        RadioShowType.Insert();
    end;

    local procedure InsertRadioShows()
    begin

        InsertRadioShow('RS001', 'TALK', 'CeCe and Friends', 'CECE', 'CeCe Grace', 7200000);
        InsertRadioShow('RS002 ', 'MUSIC ', 'Alec Rocks and Bops', 'ALEC ', 'Alec Benito', 7200000);
        InsertRadioShow('RS003 ', 'CALL-IN', 'Ask Cole!', 'COLE ', 'Cole Henry', 7200000);
        InsertRadioShow('RS004 ', 'CALL-IN', 'What do you think?', 'WESLEY ', 'Wesley Ernest', 3600000);
        InsertRadioShow('RS005 ', 'MUSIC ', 'Quiet Times', 'SASKIA ', 'Saskia Mae', 10800000);
        InsertRadioShow('RS006 ', 'NEWS ', 'World News', 'DAAN ', 'Daan White', 3600000);
        InsertRadioShow('RS007 ', 'ROCK ', 'Rock Classics', 'JOSEPH ', 'Josephine Black', 7200000);
        InsertRadioShow('RS008 ', 'TALK', 'Kristels Babytalks', 'KRIS ', 'Kristel van Vugt', 3600000);
    end;

    local procedure InsertRadioShow(ID: Code[10]; RsType: Code[10]; Name: Text[50]; HostNo: Code[10]; HostName: text[50]; Runtime: Duration)
    var
        RadioShow: Record RadioShow;
    begin
        RadioShow.Init();
        RadioShow.No := ID;
        RadioShow.RadioShowType := RsType;
        RadioShow.Name := Name;
        RadioShow.HostNo := HostNo;
        RadioShow.HostName := HostName;
        RadioShow.RunTime := Runtime;
        RadioShow.Insert();
    end;
}