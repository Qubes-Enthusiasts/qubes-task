Qubes OS is a high-security operating system that isolates various tasks for
increased privacy and security. While it is designed with a security-first
approach, it also caters to a niche of tech-savvy enthusiasts who value the
ability to control and isolate various system tasks. Qubes' modularity allows
for a flexible and customizable experience that these users greatly appreciate.

The 3isec Qubes Templates Repository is a project created by this enthusiastic
community that seeks to extend the capabilities of Qubes OS and make it more
accessible to a broader user base.

The project consists of three main parts:

1. **Qubes Tasks**: These are Salt tasks created by the contributor known as
unman. Salt is a Python-based, open-source configuration management software
and remote execution engine. In the context of Qubes OS, Salt tasks are used for
system configuration, simplifying the setup and management of Qubes. Unman's
tasks contribute to automating various system setup processes, making it easier
for both newcomers and experienced users.

2. **Qubes Templates**: Unman also contributes to the creation of Qubes templates.
Templates in Qubes OS define the root filesystems that are shared by multiple
qubes (VMs). By developing and sharing these templates, unman provides users
with more options for their system configurations, enabling greater customization
and versatility.

3. **Windows Installation**: This component is developed by eliotclick. Windows qubes
are a highly requested feature in Qubes OS as it allows users to run Windows
applications in a more secure manner. Eliotclick's contribution makes it easier
to install and use Windows within Qubes, extending the system's compatibility
and making it more accessible to users who rely on Windows software.



### 1. Overview suppose to describe main qubes-task functions
![1_0](https://github.com/Qubes-Enthusiasts/qubes-task/assets/5336231/c9968207-670f-49b6-8bb0-2bf4f3feeacc)

### 2. On first run the qubes-task offer to install the unman's public key and repositories for both unman's tempates and tasks.
![1_1](https://github.com/Qubes-Enthusiasts/qubes-task/assets/5336231/57865bf7-de73-475b-b0a9-bc923cec1d14)
![1_2](https://github.com/Qubes-Enthusiasts/qubes-task/assets/5336231/28bb2c0f-d67c-49fe-a959-148b33f526ed)
### 3. Before the installation of the repos an user will have pop up with revision of executed with sudo code
![1_3](https://github.com/Qubes-Enthusiasts/qubes-task/assets/5336231/b7ad8131-4fe6-449f-8398-099858f296e1)
### 4. Update of tasks doesn't happen automatically as before as it can start whonix qube and even cause exception (now handled)
It's also possible to set flag so updates will happen on start. 
![1_4](https://github.com/Qubes-Enthusiasts/qubes-task/assets/5336231/d9599410-75ed-47e4-a18d-6fb66eea4a7e)
### 5. If there are need to start whonix qube, the user will be informed
![1_5](https://github.com/Qubes-Enthusiasts/qubes-task/assets/5336231/5640d90c-4060-4c13-97ec-4b318eaf3b44)
### 6. Tasks
![1_6](https://github.com/Qubes-Enthusiasts/qubes-task/assets/5336231/a796b306-efd5-4afb-a50f-dec837e0ae9a)
### 7. Templates
![1_7](https://github.com/Qubes-Enthusiasts/qubes-task/assets/5336231/9fe6eadc-770c-4cb0-9ca2-379e039fda29)
### 8. Templates tab start standart qvm-templates tool.
![1_8](https://github.com/Qubes-Enthusiasts/qubes-task/assets/5336231/322b8ba9-7b82-47ec-86dd-e2db1d796ea6)
### 9. 1-click windows installation
![1_9](https://github.com/Qubes-Enthusiasts/qubes-task/assets/5336231/a23d15b5-f4f8-413a-9d31-687e675747f7)
### 10. Exceptions are handled

# Build 

The build process is maximally simplified and self contained in the Dockerfile. Following command will create fancy directory where later docker will copy exe of qubes-task
>sudo rm -rf fancy/ && mkdir fancy && docker build -t fnc . && docker run -v /home/user/dev/qubes-fancy-task/fancy:/fancy fnc

All comands can be run out of docker but in this case you will need install all dependencies. 

# Run

Copy the exe to dom0, make it executable and run it with `.qubes-task-gui`


# Windows installation 

The video showing the windows installation process from earlier version but process is still the same

[![Video Name](https://img.youtube.com/vi/VJEGthA1Y9Y/0.jpg)](https://www.youtube.com/watch?v=VJEGthA1Y9Y)
