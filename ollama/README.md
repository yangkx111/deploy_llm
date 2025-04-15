# deploy ollama on linux
1. Clone or tansfer this repository to your linux host
2. cd to ollama directory
3. [OPTION]If you cannot access the Ollama website due to network issues, please download the Linux installation package to this Ollama directory through other means and modify the installation package name in deploy_ollama.sh
3. [OPTION]change the HOME path for user ollama in deploy_ollama.sh, because it will store model files here
4. [OPTION]change the OLLAMA_HOST in ollama.service
5. run deployee_ollama.sh

Then you can check the status of ollama by command: systemctl status ollama