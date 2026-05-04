创作背景
-
我在B站上看到了将国服无畏契约更改为英文的教程，其原理就是删除游戏文件，但WeGame总是在游戏启动之前检查游戏文件，这会导致每次的修改都会失效。于是，我便写了这个脚本，我们现在只需在WeGame里启动无畏契约前运行它，它就会帮我们做好一切该做的事。

使用教程
-
本教程将会从下载开始，一步一步地指导您使用VAL CN2EN。<br>
最重要的一点是，您的PC需要以Windows作为操作系统。
<br><br>(请根据箭头操作!!!)<br>(请根据箭头操作!!!)<br>(请根据箭头操作!!!)

下载
-
在当前页面找到Release并点入
<img width="1357" height="950" alt="image" src="https://github.com/user-attachments/assets/92a42648-7264-4df9-9b65-3dfc7fb0d158" />
在Release界面中点击 *Source Code (zip)* 便可下载VAL CN2EN
<br><br>请注意！版本越新越好！请尽量下载标记Latest的版本！<br>请注意！版本越新越好！请尽量下载标记Latest的版本！<br>请注意！版本越新越好！请尽量下载标记Latest的版本！<br><br>
<img width="471" height="344" alt="image" src="https://github.com/user-attachments/assets/4635307b-b91f-4f50-8d09-0e3a8be306fe" />

使用
-
解压完毕后，在文件夹中找到 *VAL CN2EN.bat*，打开即可。
<img width="423" height="205" alt="image" src="https://github.com/user-attachments/assets/467fe109-a3fb-4d60-8d7d-c36c62672a7e" />

添加路径
-
由于一些限制，VAL CN2EN脚本并不会自动寻找国服无畏契约的安装路径，因此您需要自动添加路径。但请放心，这是一个简单的过程。
<br>
<br>1 - 在WeGame中打开安装路径
<img width="1280" height="822" alt="586809227-a4dfeec3-f787-4cf6-9464-1f0fbbb8e7e5" src="https://github.com/user-attachments/assets/237bcfe2-b430-4e68-a4aa-76663bf8b11e" />

<br>2 - 在弹出的窗口中选择文件路径并复制
<img width="1125" height="659" alt="image" src="https://github.com/user-attachments/assets/519168c3-54ef-490d-a2ca-5761cef19ceb" />
<br>3 - 添加路径
<br>VAL CN2EN会在首次启动中弹出路径地址输入框，此时将复制下来的路径粘贴复制即可。
<img width="454" height="171" alt="image" src="https://github.com/user-attachments/assets/628744c2-6428-414d-81f1-c5cfceb94e38" />
<br>4 - 完成<br>
VAL CN2EN在检测完安装路径合法性后，将会自动保存路径以便下次使用。
<img width="979" height="512" alt="image" src="https://github.com/user-attachments/assets/e61c0688-2ae7-49df-b27d-983a27021e8d" />

关于添加路径的疑难解答
-
如果VAL CN2EN错误地把您的路径当成合法路径 可以通过如下的方式解决:<br>
<br>1 - 按下Win + R 弹出运行提示符
<br>2 - 输入 *cmd.exe /c del /f /s /q "%temp%\VAL_PATH.txt"*
<br>3 - 完毕<br>

注意事项
-
1 - 本脚本虽然只有对WeGame启动的无畏契约起效果，但无畏契约启动器中无游戏文件检测，可以在删除文件后直接启动。<br><br>
2 - 请在WeGame启动游戏前运行此脚本，否则脚本将无法运行！<br><br>
3 - 本脚本只适用于Windows 10/11，且安装了PowerShell的环境。<br><br>
4 - 360等杀毒软件可能会误报本脚本含有病毒，请放行。<br><br>
5 - 在使用完脚本后，第二次打开游戏WeGame会提示需要修补游戏文件，修复即可。<br>
