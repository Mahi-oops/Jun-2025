 
<h1 align="center">🐚💡 Week 2: Shell Scripting Adventures – Bash It Like a Boss!</h1>

<p align="center">
🎯 Automate • Simplify • Repeat <br>
Because even coffee tastes better when your scripts work ☕🤖
</p>

---

## 🚀 Welcome to My Shell Script Playground

After taming the mighty Linux commands in Week 1 🧠💻 —  
I decided to teach my terminal how to do the work *for me*!  
And so began my friendship with... **Bash** 🐍 (no, not the Python kind 😅)

Here’s what I built this week:
- 🗂️ Scripts that create folders & files  
- 💡 Loops that control “virtual lights” (because why not?)  
- 🧮 Automations that think faster than my morning brain  
- 🎉 A hands-on journey from “echo” to “automation pro”  

---

## 🏗️ Script 1: Creating Folders Like a Pro  

📜 **File:** `create_folder.sh`  

This script creates a shiny new folder and sets permissions like a boss 🧰  

```bash
#!/usr/bin/bash
folder="/home/Mahi/kk/shellscript/mahesh/"
echo "print the path $folder"
mkdir "$folder"
echo "Successfully created folder mahesh at $folder"
chmod 755 "$folder"
echo "Permissions set to 755 (rwxr-xr-x)"


✨ What it does:

📁 Makes a new folder (no more “mkdir who?” moments)

🔐 Changes its permissions to 755 — so the owner rules, others follow

🗣️ Talks to you like a friendly assistant while doing it!

💬 “It’s like hiring a digital intern — no coffee breaks required.” 😎

📝 Script 2: File Creator Extraordinaire

📜 File: create_file.sh

Because what’s a folder without a file inside? 😅

#!/bin/bash
file="/home/Mahi/kk/shellscript/mahesh/mahi"
touch "$file"
echo "File created at: $file"
echo "File name is: $(basename "$file")"


✨ What it does:

🪄 Creates a new text file inside your folder

🧩 Prints its name and location

👀 Shows off the basename command — the detective that finds just the filename

💬 “touch” — the only touch command that works without a touchscreen! 📱😂

💡 Script 3: Lights Out – For Loop Edition

📜 File: lights_off.sh

My terminal is now an electrician 🧑‍🔧

#!/bin/bash
rooms=("Room1" "Room2" "Room3" "Room4" "Room5" "Room6")
for room in "${rooms[@]}"
do
    echo "light is getting off $room"
done


✨ What it does:

Loops through 6 rooms

Turns off lights (virtually 💡)

Shows how for loops make repetition feel elegant 🌀

💬 “Because manually turning off 6 lights? Nah, we script that!” 😎

🏠 Script 4: Lights Controller – Smart Home Mode 😎

📜 File: control_lights.sh

The script that listens before it acts — now that’s real intelligence 🧠

#!/bin/bash
env=$1
if [ "$env" = "room1" ]; then
    for room in {1..4}; do
        echo "Turning room 1 lights num $room"
    done
elif [ "$env" = "room2" ]; then
    for room in {1..4}; do
        echo "Turning room 2 lights num $room"
    done
elif [ "$env" = "garden" ]; then
    start=1
    while [ $start -le 10 ]; do
        echo "Turning Garden light num $start"
        start=$((start + 1))
    done
else
    echo "Invalid Credential. Please re-enter the argument: $env"
fi


✨ What it does:

🧩 Takes input like room1, room2, or garden

🌀 Uses loops + conditions to control light numbers

🪄 Combines for, while, and if — the holy trinity of scripting

💬 “Alexa? Nah, I’ve got Bash!” 😂

🔢 Script 5: While Loop Marathon

📜 File: loop_100.sh

Sometimes you just wanna count... all the way to 💯 😅

#!/bin/bash
start=1
while [ $start -le 100 ]
do
    echo "current number is $start"
    start=$(( start+1 ))
done


✨ What it does:

Counts numbers from 1 to 100 (and doesn’t even get tired 💪)

Shows how while keeps looping until the condition breaks

A perfect intro to automation loops 🔁

💬 “Because counting manually? Ain’t nobody got time for that!” 😂

🧪 Mini Lab Challenge

Try running this combo:

bash create_folder.sh
bash create_file.sh
bash lights_off.sh
bash control_lights.sh garden
bash loop_100.sh


You’ll see:
💥 Folder created
📁 File added
💡 Lights turned off
🔢 Numbers counting
😎 All automated — no human tears involved

🎯 Summary

You just learned:
✅ Folder & file creation automation
✅ for and while loop logic
✅ Smart decision-making using if
✅ How to talk to your system like a pro

Bash scripting isn’t just coding — it’s making your computer your personal butler 🤵‍♂️💻

<h3 align="center">⚙️ Week 2 ✔️ | Next Stop → Containers & Docker 🐳</h3> <p align="center"> “Keep calm and <b>bash</b> on 💥” </p> ```