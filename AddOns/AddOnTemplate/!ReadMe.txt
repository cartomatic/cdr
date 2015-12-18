Based on:
http://coreldraw.com/blogs/insider/pages/custom-dockers-in-coreldraw.aspx
http://forum.oberonplace.com/blog.php?b=166
http://forum.oberonplace.com/blog.php?bt=15019


<<GmsProjectName>> - Name of the GMS project (VBA namespace)
<<ShowDockerMethodName>> - name of the method in the <<GmsProjectName>>.Macros that is used to show the docker



<<GUID A>> - uuid of a button that is added to the Window\Dockers menu
<<DockersMenuBtnText>> - btn text

<<GUID B>> -- uuid of a wpf control that will be placed on the docker
hostType="<<AddOnDllPath>>\<<AddOnDllFileName>>.dll,<<AddOnNamespace>>.<<DockerClassName>>"

<<GUID C>> - uuid of a new docker that will host a wpf user control
<<DockerName>> - name / caption of the docker window

userSmallBitmap - base 64 encoded icon