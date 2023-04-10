### Are you wishing to contribute to this project to make it more attractive and functional ?
**You are welcome! Just follow to contribute.**

#### Steps for contribution

1. Fork the repo

![image](https://user-images.githubusercontent.com/77236280/230830867-a267588d-a4e7-4f73-829a-c5efab0a8284.png)

2. Clone the forked repo into your local machine <br>
``` bash 
$ git clone https://github.com/your_username/bloggingSite.git
```
![image](https://user-images.githubusercontent.com/77236280/230833317-6ece2616-d899-4a8a-81e8-c12cb5234f49.png)

3. cd to the repo
```bash
 $ cd bloggingSite
 ```

4. Create a branch
```bash
    $ git checkout -b mybranch
```

5. Open the repo code using any IDE/text-editors (Intellij recommended)

6. Add, Commit and Push the changes to your forked repo
``` bash
$ git add .
$ git commit -m "your commit message"
$ git push origin mybranch
```

7. Create a pull request from `mybranch` of your forked repo to `main` branch of this(upstream) repo.

![image](https://user-images.githubusercontent.com/77236280/230831060-aea829f2-df7d-4f0e-b330-8bddb12f80b0.png)

  + Just click on Sync fork
  + After synced with upstream click on *contribute*
  + Open a pull request and wait for merge
  
***For database Connection:***
+ Procced to `ConnectionProvider.java` class inside utilities package and update the **database url, username and password**.
+ Import `bloggingSite_user.sql` (is inside webapp/ext) file to mysql database.
+ Start server you are all set.
  
  ## Contributors
  
  <a href="https://github.com/SatyaRajAwasth1/bloggingSite/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=SatyaRajAwasth1/bloggingSite"/>
  </a>
