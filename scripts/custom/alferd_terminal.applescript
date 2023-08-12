on alfred_script(q)
    -- Append "&& exit" to the input command
    set q to q & " && exit"

    set targetWindow to ""
    
    tell application "Terminal"
        set allWindows to every window
        repeat with aWindow in allWindows
            if (name of aWindow contains "AlfredScriptWindow") then
                set targetWindow to aWindow
                exit repeat
            end if
        end repeat

        if targetWindow is "" then
            -- If no window with the unique string found, create a new window
            do script q
        else
            -- If the window with the unique string found, execute the command in that window
            do script q in targetWindow
        end if
    end tell

    -- Add a delay (adjust the time as needed) to allow the command to complete
    delay 3

    -- Quit Terminal
    tell application "Terminal" to quit
end alfred_script
