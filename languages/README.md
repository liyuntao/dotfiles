Python
====================

自定义豆瓣 pypi 源
------------------

得益于豆瓣的源 pypi.douban.com ，现在通过 pip 安装包要快很多。使用豆瓣源的方法如下：

1. 如果是使用 requirements.txt 安装，则需要在 requirements.txt 头部放入下面的内容

    ```bash
    -i https://pypi.douban.com/simple
    Flask==0.9
    Flask-Babel==0.8
    Flask-Login==0.1.3
    ```

    然后通过下面的命令执行安装
    
    ```bash
   sudo pip install -v -r requirements.txt
    ```

2. 如果不使用 requirements.txt，则可以通过下面的命令安装

    ```bash
    sudo pip install -v Flask -i https://pypi.douban.com/simple
    ```

3. (全局生效)Mac OS/Linux 修改 `~/.pip/pip.conf`

    增加以下内容
    
    ```bash
   [global]
   index-url = https://pypi.douban.com/simple
    ```
    [配置参考](http://pip.readthedocs.io/en/latest/user_guide/#config-file)


