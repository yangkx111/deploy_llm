# 在Linux上部署Ollama
1. 将此仓库克隆或传输到您的Linux主机
2. 进入ollama目录
3. [可选]如果因为网络原因无法访问ollama网站，请通过其他途径将linux安装包下载到此ollama目录，并修改deploy_ollama.sh中的安装包名称
3. [可选]在deploy_ollama.sh中修改用户ollama的HOME路径，因为模型文件将存储在此处
4. [可选]在ollama.service中修改OLLAMA_HOST配置
5. 运行deploy_ollama.sh脚本

部署完成后，您可以通过以下命令检查ollama状态：systemctl status ollama
