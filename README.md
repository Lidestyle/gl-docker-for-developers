#### Pre-Requirements

Git Bash, Vagrant and VirtualBox should be installed. (Run the following commands to get them)
 
```powershell
## Set Up Choco package manager
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

## Install required apps
choco install git virtualbox vagrant -yes
```

#### Setup environment

1. Clone the repo:
```powershell
git clone repo
```
2. Run vagrant and wait untill machine provisioned
```powershell
Set-Location repo ; vagrant up
```
3. Login to VM.
 ```powershell
 ## User - vagrant ; SSH Password: vagrant
 vagrant ssh
 ```
4. Check you have docker on your VM
 ```sh
docker run hello-world
 ```

#### Task:

 - Set Up docker registry for your images.
 - Write Dockerfile

#### CleanUp your workspace after you finished
```powershell
vagrant box remove bento/ubuntu-18.04
choco uninstall virtualbox vagrant putty -yes
```