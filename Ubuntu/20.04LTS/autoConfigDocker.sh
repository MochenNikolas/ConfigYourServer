######## Install docker (ref: official install document) ########

# Uninstall old versions
sudo apt-get remove docker docker-engine docker.io containerd runc

# Update the apt package index and install packages to allow apt to use a repository over HTTPS
yes y | sudo apt-get install ca-certificates curl gnupg lsb-release

# Add Docker’s official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Use the following command to set up the repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the apt package index
yes y | sudo apt-get update

# Install the latest version of docker
yes y | sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

######## Finish installation of docker ########