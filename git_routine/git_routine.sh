#! /bin/bash


ssh-keygen -C 'your@email.address' -t rsa


git config --global user.name "Your Real Name"
git config --global user.email  "you@email.address"

ssh-add

cd ~/reposi
git init

git remote add origin git@github.com:et0803/examples_Qt5_OpenCV3_ROS_OpenGL_cmake.git

git pull origin master

git add . 

git commit -m "first comment"

git push origin master





# 创建一个版本库
git init
# 每次修改好了后，可以先将修改存入stage(快照/索引)中
git add <modified files>
# 修改了大量文件则使用下面这个命令批量存入
git add .
# 使用commit将快照/索引中的内容提交到版本库中
git commit -m "msg"
# 也可以将git add与git commit用一个指令完成
git commit -a -m "msg"
# 将本地的git档案与github(远程)上的同步
git push
# 将github(远程)的git档案与本地的同步(即更新本地端的repo)
git pull
# 例如,pull指令其实包含了fetch(將变更复制回來)以及merge(合并)操作
git pull git://github.com/tom/test.git
 
# 另外版本控制系統的branch功能也很有意思，若同时修改bug，又要加入新功能，可以fork出一个branch：一个专门修bug，一个专门加入新功能，等到稳定后再merge合并
git branch bug_fix # 建立branch，名为bug_fix
git checkout bug_fix # 切换到bug_fix
git checkout master #切换到主要的repo
git merge bug_fix #把bug_fix这个branch和现在的branch合并
 
# 若有remote的branch，想要查看并checkout
git branch -r # 查看远程branch
git checkout -b bug_fix_local bug_fix_remote #把本地端切换为远程的bug_fix_remote branch并命名为bug_fix_local
 
# 还有其它可以查看repo状态的工具
git log #可以查看每次commit的改变
git diff #可以查看最近一次改变的內容，加上参数可以看其它的改变并互相比较
git show #可以看某次的变更
 
# 若想知道目前工作树的状态，可以輸入
git status




