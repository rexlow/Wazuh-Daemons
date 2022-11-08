## Wazuh DaemonSet Agent for Kubernetes

If you are running a kubernetes cluster for a compliance workload, you're probably thinking how to install wazuh agent in worker nodes.

Technically, we can ssh into individual compute instance and install the wazuh-agent from the terminal.

However, this is not the best way to do it considering the auto-scale nature of kubernetes as the agent will not be installed in new nodes.

One way to achieve that is through a DaemonSet workload.

This repo installs wazuh-agent in CentOS. If you're deploying it in other OS, feel free to update the ConfigMap in `agent.yaml`

## Configuration

1. Replace manager IP in `agent.yaml` line 26.
2. Replace workers IP in `ossec.conf` line 4.
3. Replace your dockerhub handler in `build.sh`

## Installation

```
bash build.sh
```

## Note

This tool does not offer auto remove and auto add agent if an existing agent is found. If you need to add a new agent with the same name, login to your master node and run the below command to remove the agents first

```
/var/ossec/bin/manage_agents
```