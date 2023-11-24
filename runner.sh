cd /workspaces/quantum-compiler/
rm -r qrng
git clone https://github.com/microsoft/Quantum.git
mv /workspaces/quantum-compiler/Quantum/samples/interoperability/qrng /workspaces/quantum-compiler/
rm -r Quantum
wget https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt-get update
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y dotnet-sdk-6.0

