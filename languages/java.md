Java
====================

直接使用阿里的 Maven 镜像源

```bash
  <mirrors>
    <mirror>
      <id>alimaven</id>
      <name>aliyun maven</name>
      <url>http://maven.aliyun.com/nexus/content/groups/public/</url>
      <mirrorOf>central</mirrorOf>        
    </mirror>
  </mirrors>
```


示例: 先从 maven 安装包中 copy 配置模板到用户目录（Mac OS）
```
brew list maven
cp /usr/local/Cellar/maven/3.6.3/libexec/conf/ ~/.m2/
vim ~/.m2/settings.xml
```
