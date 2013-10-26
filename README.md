##这是我学习Spring MVC过程中创建的仓库
Compilation
-----------
1.  Download tag zip from [SpringMVC tags][tags].
2.  Extract files to Home Directory.
3.  Compile project use maven Command `mvn clean install`.
4.  Change directory to ./target and you will get the war file.

Execution
---------
Once you have Compiled the Project, you can run it immediately within Tomcat, Jetty etc,
then open you prefer Web Broswer and open [http://localhost:8080/][link1] or [http://localhost:8080/SpringMVC/][link2]
###Use Tomcat
1.  Copy the war file to your Tomcat Webapp directory.
2.  Start your tomcat web server.

###Use [Webapp-Runner][webapp-runner]
> Webapp runner is designed to allow you to launch an exploded or compressed war 
that is on your filesystem into a tomcat container with a simple java -jar command.

You can get the Tomcat Server runs through the serial steps:

1.  Compile a runnable jar server file through the course from [jsimone/webapp-runner/README.md][webapp-readme]
2.  use `webapp-runner.jar -jar SpringMVC.war` to launch server.

[tags]:https://github.com/rankun203/SpringMVC/releases
[webapp-runner]:https://github.com/jsimone/webapp-runner
[webapp-readme]:https://github.com/jsimone/webapp-runner/blob/master/README.md
[link1]:http://localhost:8080/
[link2]:http://localhost:8080/SpringMVC/