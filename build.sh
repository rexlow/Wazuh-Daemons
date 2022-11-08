docker build . -t rexlow/wazuh-agent --platform linux/amd64 # remove the last chunck (platform) if you are not running on the M1 Macbooks

docker push rexlow/wazuh-agent

kubectl apply -f agent.yaml