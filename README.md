<div align="center" id="top"> 
  <img src="./.github/app.gif" alt="Myscripts" />

  &#xa0;

  <!-- <a href="https://myscripts.netlify.app">Demo</a> -->
</div>

<h1 align="center">Deploy Tomcat From Your Desktop to AWS EC2</h1>

<p align="center">
  <img alt="Github top language" src="https://img.shields.io/github/languages/top/patgit12/script-ansible-ec2?color=56BEB8">

  <img alt="Github language count" src="https://img.shields.io/github/languages/count/patgit12/script-ansible-ec2?color=56BEB8">

  <img alt="Repository size" src="https://img.shields.io/github/repo-size/{{YOUR_GITHUB_USERNAME}}/myscripts?color=56BEB8">

  <img alt="License" src="https://img.shields.io/github/license/{{YOUR_GITHUB_USERNAME}}/myscripts?color=56BEB8">

  <!-- <img alt="Github issues" src="https://img.shields.io/github/issues/{{YOUR_GITHUB_USERNAME}}/myscripts?color=56BEB8" /> -->

  <!-- <img alt="Github forks" src="https://img.shields.io/github/forks/{{YOUR_GITHUB_USERNAME}}/myscripts?color=56BEB8" /> -->

  <!-- <img alt="Github stars" src="https://img.shields.io/github/stars/{{YOUR_GITHUB_USERNAME}}/myscripts?color=56BEB8" /> -->
</p>

<!-- Status -->

<!-- <h4 align="center"> 
	🚧  Myscripts 🚀 Under construction...  🚧
</h4> 

<hr> -->

<p align="center">
  <a href="#dart-about">About</a> &#xa0; | &#xa0; 
  <a href="#sparkles-features">Features</a> &#xa0; | &#xa0;
  <a href="#rocket-technologies">Technologies</a> &#xa0; | &#xa0;
  <a href="#white_check_mark-requirements">Requirements</a> &#xa0; | &#xa0;
  <a href="#checkered_flag-starting">Starting</a> &#xa0; | &#xa0;
  <a href="#memo-license">License</a> &#xa0; | &#xa0;
  <a href="https://github.com/{{YOUR_GITHUB_USERNAME}}" target="_blank">Author</a>
</p>

<br>

## :dart: About ##

This script is designed to automate the deployment of Apache Tomcat on an AWS EC2 instance using Ansible. It allows you to choose the version of Tomcat to install, specify user credentials, and assign roles for Tomcat management. This README provides an overview of how to use the script and its functionality.

## :sparkles: Features ##

:heavy_check_mark: Dynamic Tomcat Version Selection:

The script fetches the latest Tomcat version from the Apache Tomcat website.
Allows the user to specify the Tomcat version they want to install or uses the default version.


:heavy_check_mark: User Interaction:

Prompts the user to input their desired username and password for Tomcat's manager-gui and manager-script roles.
Asks the user to specify the desired roles for Tomcat, such as manager-gui, manager-script, etc., separating each role by a comma.

:heavy_check_mark: Version Validation:

Validates the specified Tomcat version by checking its availability on the Apache Tomcat website. If the version is not found, the user is prompted to choose a different version.

:heavy_check_mark: Deployment on AWS EC2:

Utilizes Ansible playbooks (createc2.yaml and deploytomcat.yaml) for deploying on AWS EC2 instances.
Disables Ansible's host key checking to prevent SSH connection issues. 

:heavy_check_mark: Dynamic Download Link Generation:

Generates the download link for the specified Tomcat version or uses a default link if no specific version is provided.
Handles both the case when the specified version is available on the Apache Tomcat website and when using the default version.

:heavy_check_mark: User-Friendly Prompts:

Provides clear prompts and messages during the execution of the script, guiding the user through the deployment process.


:heavy_check_mark: Customization:

Allows users to easily customize the script for their needs, such as modifying Ansible playbooks or adapting the script for different environments






## :rocket: Technologies ##

The following tools were used in this project:

- [WSL for Windows Users](https://learn.microsoft.com/en-us/windows/wsl/install)

## :white_check_mark: Requirements ##

Before using this script, make sure you have the following prerequisites:

Linux Environment: This script is designed to run on a Linux environment, specifically using the Bash shell.

Curl: Ensure that Curl is installed on your system, as it is used to retrieve the latest Tomcat version and download the installation package.

Ansible: You must have Ansible installed and configured on your machine. Ansible is used to automate the deployment process.

## :checkered_flag: Starting ##

```bash
# Clone this project
$ git clone https://github.com/patgit12/script-ansible-ec2

# Access
$ cd script-ansible-ec2

# Install dependencies
$ pip install boto boto3 botocore ansible
$ curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

$ sudo ./aws/install

```

## :memo: License ##

This project is under license from MIT. For more details, see the [LICENSE](LICENSE.md) file.


Made with :heart: by <a href="https://github.com/{{github_username}}" target="_blank">Patrick O</a>

&#xa0;

<a href="#top">Back to top</a>
