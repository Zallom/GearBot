FROM python:3.9
WORKDIR /GearBot
COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt
COPY enums.py.patch /usr/local/lib/python3.9/site-packages/disnake/enums.py
COPY . .
CMD ["python", "./GearBot/GearBot.py"]