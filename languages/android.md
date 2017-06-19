Android/Gradle
---

1. 开启 profile, 会在build/reports/profile生出相应的时间统计数据, 观测每个task的耗时

    ```bash
    # e.g.
    gradlew AssembleDebug --profile
    ```

2. 修改 gradle-user-home （环境变量 GRADLE_USER_HOME or 命令参数）
    
    ```bash
    # e.g.
    gradle --gradle-user-home=/drone/your_custom_cache
    ```
    利用 gradle 可以修改 cache 目录的配置，将 cache 目录转移到/drone/ 下面缓存起来。
    这样既规避了 drone 的局限(cache 目录必须在 `/drone` 下面)，也省掉一个带缓存文件的二级 docker-base-image

参考 http://mrhaki.blogspot.com/2010/09/gradle-goodness-changing-gradle-user.html

3. 增量构建(思路同上： 将代码目录下的build目录，留在 drone.io 的 cache 路径下）

增量构建能将构建时间缩短到个位数秒，本机是 2s 左右

4. 分离 release 和 debug 的构建，采用不同的命令

比如 app 有四个维度，最终会生成 8 个产物。分离 release 和 debug 的构建能将构建时间缩短一半以上。

```bash
# 约定：针对 git push -> master 只生成 debug-apk
gradle assembleDebug
# 约定：针对 git push with tags 只生成 release-apk
gradle assembleRelease
```
5. 关闭没用的 task

比如 lint 这个 task 因为未知原因异常的慢，用 -x 指令去掉
```
gradle build -x lint 
```