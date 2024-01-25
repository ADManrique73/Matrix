{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fmodern\fcharset0 CourierNewPS-ItalicMT;}
{\colortbl;\red255\green255\blue255;\red55\green58\blue64;\red247\green247\blue247;\red0\green0\blue0;
}
{\*\expandedcolortbl;;\cssrgb\c27843\c29412\c31765;\cssrgb\c97647\c97647\c97647;\cssrgb\c0\c0\c0;
}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 #!/bin/bash\
\
#AsierDM \
\
\pard\pardeftab720\partightenfactor0

\f1\i\fs32 \cf2 \cb3 \expnd0\expndtw0\kerning0
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | sudo tee /usr/share/keyrings/postgresql-key.gpg >/dev/null\
\
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/postgresql-key.gpg arch=amd64] http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'\
\
sudo apt update\
\
sudo apt install postgresql postgresql-contrib -y\
\
}