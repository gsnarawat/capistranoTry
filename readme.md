This demonstrates simple use of capistrano with git for deploying an application using the code in git repositary. 

For Connecting with the server, I have used public key file for authentication. Password also can be used for same.

To deploy to an evironment, run command
 
 sudo cap staging deploy    (staging is the name of environment here)
 sudo cap production deploy (staging is the name of environment here)

 We can use also use 
 
  sudo cap deploy 

  in this case it will take the environment which is set as default in deploy.rb

  To Rollback a deployed release, run command

   sudo cap staging deploy:rollback