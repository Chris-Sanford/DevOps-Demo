# DevOps-Demo
A sample project to demonstrate my skills in DevOps-related tools and practices.

The code found within this project is resposible for serving up my website at [ChrisSanford.me](http://chrissanford.me).

The stack/toolchain is as follows:
| Category      | Tool |
| ----------- | ----------- |
| Version Control / SCM | GitHub |
| CI/CD | Jenkins |
| Infrastructure as Code | Terraform |
| Cloud Provider | AWS |
| Operating System(s) | Ubuntu Server |
| Configuration Management | Ansible |
| Containerization | Docker |
| Web Server | Apache HTTP Server |

The project consists of 2 servers named 'www' and 'devops' hosted in AWS using EC2. www hosts [ChrisSanford.me](http://chrissanford.me) running Docker and Apache HTTP Server. DevOps hosts all the tools needed to deliver WWW, including Jenkins (which is accessible over the Internet at [admin.chrissanford.me](https://admin.chrissanford.me)), Terraform, and Ansible.

To explain the pipeline in (mostly) plain English:  
>GitHub hosts the source code which  
Jenkins uses to run scripted pipeline Jenkinsfiles which tell  
Terraform to communicate with  
AWS to provision infrastructure that runs an instance of  
Ubuntu Server which is configured by  
Ansible which manages the state of  
Docker which runs  
Apache HTTP Server which serves up [ChrisSanford.me](http://chrissanford.me).

Since I often flip between macOS and Windows workstations, here's my client software as well:
| Tool | Purpose |
| ---- | ------- |
| Google Drive | Acts as cloud storage which stores my working directory and secrets |
| Terraform CLI | For provisioning development infrastructure and initial instance of DevOps server. |
| AWS CLI | See Terraform CLI. |
| Visual Studio Code | Integrated Development Environment (IDE). |
| Git | For pushing and pulling code to and from GitHub and managing local development source code. Visual Studio Code helps with authentication to GitHub. |
