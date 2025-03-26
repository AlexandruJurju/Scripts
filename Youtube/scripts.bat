@echo off
setlocal enabledelayedexpansion

:: Initialize song list
set song_count=0
call :add_song "https://www.youtube.com/watch?v=uEI2RpEupRo"
:: Add more songs as needed

:: Download each song using yt-dlp (audio only)
for /L %%i in (0,1,%song_count%) do (
    if defined songs[%%i] (
        set url=!songs[%%i]!
        
        echo Downloading audio from "!url!"
        yt-dlp -x --audio-format mp3 --audio-quality 0 ^
               --embed-thumbnail --add-metadata ^
               -o "%%(title)s.%%(ext)s" ^
               "!url!"
        echo.
    )
)

echo All downloads are complete!
pause
exit /b

:add_song
set songs[%song_count%]=%~1
set /A song_count+=1
goto :eof