@echo off
setlocal enabledelayedexpansion

:: Initialize video count
set video_count=0

:: Define the video URLs and titles
call :add_video "http://fast.wistia.net/embed/iframe/ojxd8phse2" "1.1. Welcome"
call :add_video "http://fast.wistia.net/embed/iframe/lu6jcpnwzx" "1.2. What will you learn in this course"
call :add_video "http://fast.wistia.net/embed/iframe/zlwiq00i12" "1.3. Who is the course for and prerequisites"

call :add_video "http://fast.wistia.net/embed/iframe/46r27bt4er" "2.1. Desiging systems following Domain-Driven Design"
call :add_video "http://fast.wistia.net/embed/iframe/95wbhfg3lh" "2.2. Key Strategic and Tactical Practices"
call :add_video "http://fast.wistia.net/embed/iframe/gpat522623" "2.3. Domain Discovery"
call :add_video "http://fast.wistia.net/embed/iframe/zys8wsxbvl" "2.4. Domain Discovery Techniques"
call :add_video "http://fast.wistia.net/embed/iframe/fdvp6hf6j7" "2.5. Event Storming Sneak Peek"
call :add_video "http://fast.wistia.net/embed/iframe/xcwqrihsab" "2.6. Documenting Ubiquitous Language"
call :add_video "http://fast.wistia.net/embed/iframe/c654v2oly3" "2.7. Documenting Invariants"
call :add_video "http://fast.wistia.net/embed/iframe/cbsihngbtp" "2.8. Section Recap"

call :add_video "http://fast.wistia.net/embed/iframe/pgrpqn6hqb" "3.1. What is Event Storming"
call :add_video "http://fast.wistia.net/embed/iframe/c628inip7g" "3.2. Event Storming Legend"
call :add_video "http://fast.wistia.net/embed/iframe/0qje2y0h17" "3.3. Types of Event Storming"
call :add_video "http://fast.wistia.net/embed/iframe/e24l00fy00" "3.4. Big Picture Event Storming"
call :add_video "http://fast.wistia.net/embed/iframe/t6qg3p7o17" "3.5. Gym Session Scheduling System Domain Overview"
call :add_video "http://fast.wistia.net/embed/iframe/w5nma3ktn3" "3.6. Big Picture Event Storming In Action - Setup"
call :add_video "http://fast.wistia.net/embed/iframe/rje733fblw" "3.7. Round 1 - Chaotic Exploration"
call :add_video "http://fast.wistia.net/embed/iframe/j5emwe23a0" "3.8. Round 2 - Enforce the Timeline"
call :add_video "http://fast.wistia.net/embed/iframe/7muxczs54k" "3.9. Round 3 - People _ Systems"
call :add_video "http://fast.wistia.net/embed/iframe/pqz9dnz1eu" "3.10. Round 4 - Walkthrough _ Reverse Narrative"
call :add_video "http://fast.wistia.net/embed/iframe/l2qpoxxtqh" "3.11. Round 5 - Arrow Voting"
call :add_video "http://fast.wistia.net/embed/iframe/dbvp7rnf6y" "3.12. Big Picture Event Storming Goals"
call :add_video "http://fast.wistia.net/embed/iframe/9axi4ytmzu" "3.13. Section Recap"

call :add_video "http://fast.wistia.net/embed/iframe/2ue9c891hx" "4.1. Process Modeling Event Storming"
call :add_video "http://fast.wistia.net/embed/iframe/opirv76ji7" "4.2. Process Modeling - The Rules of the Game"
call :add_video "http://fast.wistia.net/embed/iframe/5x10j26upa" "4.3. Process Modeling in Action - Setup"
call :add_video "http://fast.wistia.net/embed/iframe/mysaqenglu" "4.4. Round 1 - Framing the Problem"
call :add_video "http://fast.wistia.net/embed/iframe/c2hoe671k4" "4.5. Round 2 - Rush to the Goal"
call :add_video "http://fast.wistia.net/embed/iframe/ix302e9yxk" "4.6. Round 3 - Fill in the Blanks"
call :add_video "http://fast.wistia.net/embed/iframe/qz2cw7l4gm" "4.7. Process Modeling Event Storming Goals"
call :add_video "http://fast.wistia.net/embed/iframe/jcsirmdpp7" "4.8. Section Recap"

call :add_video "http://fast.wistia.net/embed/iframe/oogu2r24mg" "5.1. Refresher - What are Domains _ Sub-Domains"
call :add_video "http://fast.wistia.net/embed/iframe/47vh9g0lio" "5.2. Identifying Sub-Domains"
call :add_video "http://fast.wistia.net/embed/iframe/d540qq1dhu" "5.3. Classifying Sub-Domains"
call :add_video "http://fast.wistia.net/embed/iframe/eo3q8hx49j" "5.4. Section Recap"

call :add_video "http://fast.wistia.net/embed/iframe/czzilgwurh" "6.1. Refresher - What are Bounded Contexts"
call :add_video "http://fast.wistia.net/embed/iframe/xdqa3ed74q" "6.2. Reviewing Our Ubiquitous Language"
call :add_video "http://fast.wistia.net/embed/iframe/bbinooscv2" "6.3. Reviewing Our Invariants"
call :add_video "http://fast.wistia.net/embed/iframe/zuss1l0t1s" "6.4. Reviewing Our Sub-Domains"
call :add_video "http://fast.wistia.net/embed/iframe/c2i9nifqbf" "6.5. How Bounded Contexts Affect Domain Models"
call :add_video "http://fast.wistia.net/embed/iframe/8mbf9uui49" "6.6. Defining Bounded Contexts"
call :add_video "http://fast.wistia.net/embed/iframe/vthp25cvbx" "6.7. Defining Our Bounded Contexts"
call :add_video "http://fast.wistia.net/embed/iframe/f30y2o9lry" "6.8. Section Recap"

call :add_video "http://fast.wistia.net/embed/iframe/jne704fit1" "7.1. Refresher - What is Context Mapping"
call :add_video "http://fast.wistia.net/embed/iframe/xevtlolt0h" "7.2. Team Relationships"
call :add_video "http://fast.wistia.net/embed/iframe/j4cex59xkr" "7.3. Context Map Patterns"
call :add_video "http://fast.wistia.net/embed/iframe/obzshm4xkp" "7.4 Context Mapping In Action - Setup _ Context"
call :add_video "http://fast.wistia.net/embed/iframe/s26u41w8st" "7.5. Creating an Admin Profile"
call :add_video "http://fast.wistia.net/embed/iframe/jesg1eqlf0" "7.6. Creating a Subscription"
call :add_video "http://fast.wistia.net/embed/iframe/oeej0y6zri" "7.7. Creating a Gym"
call :add_video "http://fast.wistia.net/embed/iframe/8daqwg0ro8" "7.8. Creating a Room"
call :add_video "http://fast.wistia.net/embed/iframe/6luwqb66cl" "7.9. Creating a Session"
call :add_video "http://fast.wistia.net/embed/iframe/tr27p2rije" "7.10. Creating a Participant Profile"
call :add_video "http://fast.wistia.net/embed/iframe/da9pt2ew90" "7.11. Reserving a Spot in a Session"
call :add_video "http://fast.wistia.net/embed/iframe/qsv7gedrml" "7.12. Context Mapping In Action - Conclusion"
call :add_video "http://fast.wistia.net/embed/iframe/q70qcqo72x" "7.13. Strategic Goals Alignment"
call :add_video "http://fast.wistia.net/embed/iframe/2etuorf9tq" "7.14. Section Recap"

call :add_video "http://fast.wistia.net/embed/iframe/4hq9kykvks" "8.1. Refresher - What is the Tactical Phase"
call :add_video "http://fast.wistia.net/embed/iframe/2hckionna7" "8.2. Refresher - Tactical Patterns"
call :add_video "http://fast.wistia.net/embed/iframe/wjpesu7hg6" "8.3. Tactical Phase Objectives"
call :add_video "http://fast.wistia.net/embed/iframe/0dn6yu7rwq" "8.4. Section Recap"

call :add_video "http://fast.wistia.net/embed/iframe/z6k333x3ms" "9.1. Enforce Invariants"
call :add_video "http://fast.wistia.net/embed/iframe/qcnjb9q1qh" "9.2. Reference Aggregates By Id"
call :add_video "http://fast.wistia.net/embed/iframe/fecnjft32n" "9.3. Update Aggregate via Aggregate Root"
call :add_video "http://fast.wistia.net/embed/iframe/wrmhxem191" "9.4. Prefer Smaller Aggregates"
call :add_video "http://fast.wistia.net/embed/iframe/3vk5falr1q" "9.5. One Aggregate Per Transaction"
call :add_video "http://fast.wistia.net/embed/iframe/ycai2bsh8p" "9.6. Use Eventual Consistency Outside the Boundary"
call :add_video "http://fast.wistia.net/embed/iframe/0634xfokq4" "9.7. Maintain Aggregate Scope"
call :add_video "http://fast.wistia.net/embed/iframe/1sj3cbjw2c" "9.8. Aggregate Root Identity Uniqueness"
call :add_video "http://fast.wistia.net/embed/iframe/2p6g60cnyr" "9.9. Private Public"
call :add_video "http://fast.wistia.net/embed/iframe/vp4g6ne6r1" "9.10. Assess and Refactor"
call :add_video "http://fast.wistia.net/embed/iframe/tfzmksfyiq" "9.11. Aggregate Design Steps"

call :add_video "http://fast.wistia.net/embed/iframe/l52aeinmro" "10.1. Aggregate Design In Action - Step 1"
call :add_video "http://fast.wistia.net/embed/iframe/eqdkv823vs" "10.2. Aggregate Design In Action - Step 2"
call :add_video "http://fast.wistia.net/embed/iframe/1hcujefxoj" "10.3. Aggregate Design In Action - Step 3"
call :add_video "http://fast.wistia.net/embed/iframe/mnqqurhkbz" "10.4. Aggregate Design In Action - Step 4 Setup"
call :add_video "http://fast.wistia.net/embed/iframe/lb2bl20nrz" "10.5. Merging aggregates in the User Management Context"
call :add_video "http://fast.wistia.net/embed/iframe/qbcyzll970" "10.6. Merging aggregates in Gym Management Context"
call :add_video "http://fast.wistia.net/embed/iframe/65ps9blkbg" "10.7. Merging aggregates in Session Management Context - The Chain Effect of Merging Aggregates"
call :add_video "http://fast.wistia.net/embed/iframe/q8eyzpjdg1" "10.8. Merging aggregates in Session Management Context - Identifying Missing Domain Objects"
call :add_video "http://fast.wistia.net/embed/iframe/kx50jr16ox" "10.9. Merging Aggregates in Session Management Context Continues"
call :add_video "http://fast.wistia.net/embed/iframe/atcqbsbd7l" "10.10. Merging Aggregates in Session Management Context - Propagating Data Across Bounded Contexts"
call :add_video "http://fast.wistia.net/embed/iframe/9uqrjmfi50" "10.11. Merging Aggregates Across Bounded Contexts"
call :add_video "http://fast.wistia.net/embed/iframe/fiaffe0rar" "10.12. Merging Aggregates in the Session Management Context - Continued"
call :add_video "http://fast.wistia.net/embed/iframe/xmq8esxfw0" "10.13. Aggregate Design Draft Reflection"
call :add_video "http://fast.wistia.net/embed/iframe/jqamsw5bzn" "10.14. Merging Aggregates Based On Eventual Consistency Constraints"
call :add_video "http://fast.wistia.net/embed/iframe/zm328cb9yk" "10.15. Evolving Aggregate Design With Time or Refactoring Existing Aggregate Designs"
call :add_video "http://fast.wistia.net/embed/iframe/v9fyj2qfc7" "10.16. Converting Aggregate Design To Code"
call :add_video "http://fast.wistia.net/embed/iframe/jwa1y0s2m7" "10.17. Section Recap"

call :add_video "http://fast.wistia.net/embed/iframe/z8pytlkkvs" "11.1. Course Conclusion"












:: Download each video using yt-dlp with a counter prefix
for /L %%i in (0,1,%video_count%) do (
    if defined videos[%%i].url (
        set url=!videos[%%i].url!
        set title=!videos[%%i].title!
        
        :: Format the counter with leading zeros
        set /A counter=%%i+1
        set "counter_padded=00!counter!"
        set "counter_padded=!counter_padded:~-3!"
        
        set filename=!counter_padded! - !title!
        echo Downloading "!title!" from "!url!" as "!filename!.mp4"
        yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" -S "vcodec:h264" --audio-quality 128K --recode-video mp4 -k --postprocessor-args "-c:v libx264 -crf 23 -preset medium -c:a aac -b:a 128k" -o "!filename!.mp4" "!url!"
    )
)

endlocal
echo All downloads are complete!
pause

exit /b

:add_video
set videos[%video_count%].url=%~1
set videos[%video_count%].title=%~2
set /A video_count+=1
goto :eof