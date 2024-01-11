# Use the Fedora 32 base image
FROM fedora:32 as base

# Install Python 3.8 and other required packages
RUN dnf -y install python38 python3-pip gcc make wget
RUN python3.8 -m pip install pyinstaller pyqt5-sip

WORKDIR /app
COPY . .

# fcntl is unix specific module so it's not included by pyintstaller by default
# Compile the script into a static executable
RUN pyinstaller --add-data "media:media" --onefile --clean --noconfirm --hidden-import fcntl qubes-task-gui

CMD cp /app/dist/* /fancy
