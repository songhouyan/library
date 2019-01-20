# 国科大高级软件工程大作业

项目名称：果壳图书交流共享

项目地址：https://songhouyan.herokuapp.com

开发团队： 
         组长：宋厚岩
         组员：张家伟 张成玲 史小磊

# 项目展示：

1.注册功能

<img src="/picture/注册.png" width="700">  


2.登录功能

<img src="/picture/登录.png" width="700">


3.系统主界面

<img src="/picture/主页面.png" width="700">


4.个人

<img src="/picture/个人界面.png" width="700">

5.修改信息


<img src="/picture/修改信息.png" width="700">


6.动态

<img src="/picture/关注动态.png" width="700">


7.添加

<img src="/picture/添加图书.png" width="700">


8.搜索

<img src="/picture/搜索.png" width="700">


9.图书信息


<img src="/picture/图书信息.png" width="700">


10.我的图书


<img src="/picture/我的图书.png" width="700">


11.交流

<img src="/picture/交流.png" width="700">


12.共享

<img src="/picture/共享.png" width="700">



# Userstory

 1.作为一个管理员，我想要管理所有图书，以便于我可以删除一些有问题的书籍
 
 2.作为一个用户，我想要上传我喜欢的图书，以便于我可以和喜欢这本书的人交流
 
 3.作为一个用户，我想要更改我的信息，以便于更新我的最新信息
 
 4.作为一个粉丝，我想要关注我关注的人的动态，以便于我可以了解关注人的分析
 
 
 # 数据获取
 
 采用爬虫技术爬取当当豆瓣好书获取本系统数据
 
 爬虫工具：pycharm



# 安装

在终端（MacOS或Linux）中执行以下代码

```
$ git clone https://github.com/songhouyan/mysaashomework
$ cd mysaashomework
$ bundle install
$ rake db:migrate
$ rake db:seed
$ rails s 
```

在浏览器中输入`localhost:3000`访问主页





# 使用

1.管理员账号：

用户名：`admin`

密码：`password`

2.普通用户：
用户名：`zhangjiawei`

密码：`password`

用户名：`shixiaolei`

密码：`password`

用户名：`zhangchengling`

密码：`password`



# Heroku云部署

项目可直接在Heroku上免费部署


我的部署实例：

```
heroku create
git push heroku master
heroku run rake db:migrate
heroku run rake db:seed
```




# 测试

本项目包含了部分的测试（controller、integration、fixture、model等），测试文件位于/test目录下。运行测试：

```
songyandeMacBook-Air:library songyan$ rake test
DEPRECATION WARNING: ActiveSupport.halt_callback_chains_on_return_false= is deprecated and will be removed in Rails 5.2. (called from <top (required)> at /Users/songyan/Desktop/my/library/config/initializers/new_framework_defaults.rb:23)
Run options: --seed 40902

# Running:
.........

Finished in 0.614730s, 13.0138 runs/s, 0.0000 assertions/s.

9 runs, 20 assertions, 0 failures, 0 errors, 0 skips
```






# 本系的特色功能

1. 管理员权限可以管理所有图书
2. 图书爱好者之间可以互相交流
3. 用户可以关注别人，可以看到别人的动态


# 待完善

1. 智能推荐
2. 类似论坛的图书经验交流帖子







