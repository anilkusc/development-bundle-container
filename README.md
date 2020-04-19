# development-bundle-container
With this Dockerfile you can create you development bundle for your environment.It has visual studio code , firefox , nodejs, .net core sdk etc.<br>
By this container you can run linux desktop application inside container and display in your host OS.So you can develop inside container on linux,mac,windows.So you keep your host os clean and you don't need to install all dependencies,packages etc.<br>
For macOS, you can download XQuartz and for Windows download VcXsrv for display desktop applications on your host screen.<br>
VcXsrv: https://sourceforge.net/projects/vcxsrv/

for build and run :<br>
docker build -t my-dev-container .<br>
docker run --rm -e DISPLAY=<your-host-ip>:0 my-dev-container<br>
  
If you want to open your existing project inside container:<br>
docker run --rm -e DISPLAY=<your-host-ip>:0 -v /path-to-project:/mnt/ my-dev-container<br>
