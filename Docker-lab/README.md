# 🎮 My Mini Arcade – Snake & Snakes & Ladders  

![Docker](https://img.shields.io/badge/Docker-Containerized-blue?logo=docker)
![Ubuntu](https://img.shields.io/badge/Ubuntu-OS-orange?logo=ubuntu)
![Nginx](https://img.shields.io/badge/Nginx-WebServer-green?logo=nginx)
![HTML5](https://img.shields.io/badge/Frontend-HTML5-red?logo=html5)

Welcome to my **Mini Gaming Website**, fully hosted inside a **Docker container**.  
It includes two childhood classics brought back to life:  
- 🐍 **Snake Game** — play solo or challenge the PC!  
- 🎲 **Snakes & Ladders** — race your way up, avoid the snakes!  

No accounts. No ads. Just retro fun in a box! 😄  

---

## 🧩 What This Project Does

Think of this project as:
> “A small arcade packed neatly inside a Docker container 🪄.”  

It uses:
- 🧱 **Ubuntu** as the operating system  
- 🌐 **Nginx** as the web server  
- 🎨 **HTML, CSS & JS** for the games  

When you run the container, your mini arcade instantly goes live at  
👉 **http://localhost:8080**

---

## 🧱 Step-by-Step (What’s Happening in Dockerfile)

| Step | Command | What it Does | Fun Explanation 😄 |
|------|----------|---------------|--------------------|
| 1 | `FROM ubuntu:latest` | Use Ubuntu as base image | “Give me a clean Ubuntu box 🧱” |
| 2 | `RUN apt update -y` | Update system packages | “Dust off Ubuntu shelves 🧹” |
| 3 | `RUN apt install nginx -y` | Install Nginx | “Hire Nginx, our web butler 👨‍🍳” |
| 4 | `RUN rm /var/www/html/index.nginx-debian.html` | Remove default page | “Throw out Nginx’s boring default 🚮” |
| 5 | `COPY ./game.html /var/www/html/` | Copy your game file | “Place my fun website inside 🎮” |
| 6 | `EXPOSE 80` | Open port 80 | “Let guests knock on the front door 🚪” |
| 7 | `ENTRYPOINT ["nginx"]` | Start Nginx | “Wake up Nginx — it’s showtime! ⚡” |
| 8 | `CMD ["-g", "daemon off;"]` | Keep it running | “No naps allowed! Stay awake forever 😴🚫” |

---

## 🐳 How to Build & Run  

Just two simple commands — that’s all!  

```bash
# 🏗️ Build your Docker image
docker build -t docker-lab .

# 🚀 Run the container
docker run -p 8080:80 docker-lab

Now visit 👉 http://localhost:8080
Boom 💥 your arcade is live! 🎉

| Home Menu                                                 | Snake (Solo)                                              | Snake (vs PC)                                              | Snakes & Ladders                                           |
| --------------------------------------------------------- | --------------------------------------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------- |
| ![Home](screenshots/Screenshot%202025-10-29%20002102.png) | ![Solo](screenshots/Screenshot%202025-10-29%20002143.png) | ![Vs PC](screenshots/Screenshot%202025-10-29%20002251.png) | ![Board](screenshots/Screenshot%202025-10-29%20002429.png) |

| Layer         | Tool              | Role                         |
| ------------- | ----------------- | ---------------------------- |
| 🧱 Base OS    | **Ubuntu**        | Foundation for the container |
| 🌐 Web Server | **Nginx**         | Serves the game website      |
| 💻 Frontend   | **HTML, CSS, JS** | The actual games             |
| 🐳 Container  | **Docker**        | Packs everything neatly      |

💡 Summary

You built a mini arcade website inside a Docker container using Ubuntu + Nginx.
With just two commands, your games go live — anytime, anywhere! 🌍
It’s a fun project showing that containers aren’t just for servers — they can host games too!