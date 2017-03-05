Scala
---

1. 安装 sbt

    ```bash
    brew install sbt
    ```
1. 配置 sbt 的源

    ```bash
    touch ~/.sbt/repositories
    vim ~/.sbt/repositories
    ```

3. 加上这一段，指向 repox 公服代理：

    ```bash
    [repositories]
    local
    ali-mvn: http://maven.aliyun.com/nexus/content/groups/public
    repox-maven: http://repox.gtan.com:8078/
    repox-ivy: http://repox.gtan.com:8078/, [organization]/[module]/(scala_[scalaVersion]/)(sbt_[sbtVersion]/)[revision]/[type]s/[artifact](-[classifier]).[ext]
    
    ```
1. 配置sbt，使它仅使用`~/.sbt/repositories`中的内容。
  * 如果你使用命令行，请在sbt命令行参数中添加 `-Dsbt.override.build.repos=true` 。例如我的sbt shell脚本的内容是这样的：

          #!/bin/sh
          export SBT_OPTS="-Dsbt.override.build.repos=true"
          exec java -Xmx512M ${SBT_OPTS} -jar $(dirname "$0")/sbt-launch.jar "$@"
  * 如果使用jetbrains IDEA，修改 `Preferences -> SBT -> JVM Options -> VM parameters`，保证它包含

          -Dsbt.override.build.repos=true 
  * 如果使用 activator，请打开 `~/.activator/activatorconfig.txt` 文件（如果此文件不存在，请创建它。很明显，配置文件满天飞也是 typesafe/sbt team的诸多恶趣味之一），在其中添加一行
          
          -Dsbt.override.build.repos=true
  * windows 用户可以 在 `C:\Program Files (x86)\sbt\conf\sbtconfig.txt`加入

          -Dsbt.override.build.repos=true 

