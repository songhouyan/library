# 国科大高级软件工程大作业

项目名称：果壳图书交流共享

项目地址：https://songhouyan.herokuapp.com

开发团队： 组长：宋厚岩
         组员：张家伟 张成玲 史小磊

功能展示：

注册功能

<img src="/picture/注册.png" width="700">  


登录功能

<img src="/picture/登录.png" width="700">


系统主界面

<img src="/picture/主页面.png" width="700">


个人

<img src="/picture/个人界面.png" width="700">

修改信息


<img src="/picture/修改信息.png" width="700">


动态

<img src="/picture/关注动态.png" width="700">


添加

<img src="/picture/添加图书.png" width="700">


搜索

<img src="/picture/搜索.png" width="700">


图书信息


<img src="/picture/图书信息.png" width="700">


我的图书


<img src="/picture/我的图书.png" width="700">


交流

<img src="/picture/交流.png" width="700">


共享

<img src="/picture/共享.png" width="700">



## 说明




## 安装

在终端（MacOS或Linux）中执行以下代码

```
$ git clone https://github.com/hrwhisper/CourseSelect
$ cd CourseSelect
$ bundle install
$ rake db:migrate
$ rake db:seed
$ rails s 
```

在浏览器中输入`localhost:3000`访问主页



## 多人开发协作

fork后，同步我的代码：

添加源

```
git remote add upstream https://github.com/hrwhisper/CourseSelect
git remote -v
```

git remote -v 后，应该出现我的地址。

然后

```
git fetch upstream
git merge upstream/master
```

每次同步代码后，可以执行如下重新构建一下数据库（若rake db:migrate 不行的话，那就加上reset）

```
rake db:migrate:reset
rake db:seed
```

由于可能加了新的包，所以最好还要
```
bundle install
```

更新自己的github仓库（git push)

最后通过pull request即可。



##使用

1.管理员账号：

用户名：`admin`

密码：`password`






## Heroku云部署

项目可直接在Heroku上免费部署

1.fork此项目到自己Github账号下

2.创建Heroku账号以及Heroku app

3.将Heroku app与自己Github下的fork的项目进行连接

4.下载配置[Heroku CLI](https://devcenter.heroku.com/articles/heroku-command-line)命令行工具

5.运行`heroku login`在终端登陆，检查与heroku app的远程连接情况`git config --list | grep heroku`，若未检查到相应的app，请看[这里](http://stackoverflow.com/questions/5129598/how-to-link-a-folder-with-an-existing-heroku-app)

6.运行部署，详情[请戳这里](https://devcenter.heroku.com/articles/getting-started-with-rails4#rails-asset-pipeline)

我的部署实例：

```
heroku create hrcourseselect
git push heroku master
heroku run rake db:migrate
heroku run rake db:seed
```




## 测试

本项目包含了部分的测试（integration/fixture/model test），测试文件位于/test目录下。运行测试：

```
PENG-MacBook-Pro:IMS_sample PENG-mac$ rake test
Run options: --seed 15794

# Running:
.........

Finished in 1.202169s, 7.4865 runs/s, 16.6366 assertions/s.

9 runs, 20 assertions, 0 failures, 0 errors, 0 skips
```






## 本系的特色功能

1. 课程开放、关闭







