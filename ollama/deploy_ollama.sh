# ollama file
OLLAMA_FILE_NAME="ollama-linux-amd64.tgz"
DOWNLOAD_URL="https://ollama.com/download/ollama-linux-amd64.tgz"

# check if ollama file existed
if [ ! -f "$OLLAMA_FILE_NAME" ]; then
    echo "[$OLLAMA_FILE_NAME] downloading ..."
    wget "$DOWNLOAD_URL" -O "$OLLAMA_FILE_NAME"
else
    echo "[$OLLAMA_FILE_NAME] already exists, skip download"
fi

# extract ollama to /usr path
tar -C /usr -xzf $OLLAMA_FILE_NAME

# add user ollama and home to '/usr/share/ollama' (you can change it, Ollama will store model files here, which requires a large amount of disk space)
sudo useradd -r -s /bin/false -U -m -d /usr/share/ollama ollama

# take ollama as service
cp ollama.service /etc/systemd/system/ollama.service

systemctl daemon-reload
systemctl enable ollama
systemctl start ollama