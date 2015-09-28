git config --global user.name "Your Name"
git config --global user.email "email@example.com"

git init

git add file 		//staged
git commit -m ""


git diff file		//modified,no add
git diff HEAD -- file 	//比较工作区和版本库

git reset HEAD file 	//unstaged
git checkout -- file  	//discard changes,modified,no add

//日志
//[--pretty=online] 每个commit用一行显示
//[--graph] 以图显示commit
git log [--pretty=oneline]	

//会退到上一个版本，多个^回到更早版本
//HEAD^等价HEAD1,HEAD^^等价HEAD2
git reset --hard HEAD^	

//到指定版本，回退前进都可以
git reset --hard <commit id> 	

//git operation record
git reflog 	

git rm file

//关联远程仓库
git remote add origin git@server-name:path/repo-name.git

//第一次推送
git push -u orgin master

//推送
git push orgin master

//SSH 必须要添加key?
git clone git@github.com:liyichutao/chutao.git

//切换分支
//-b创建并切换分支
git checkout [-b] dev	

//查看分支
//name 创建分支
git branch [name]

//现在在master,合并到dev
git merge dev

//禁用Fast forward合并，可以在log --graph图上显示出分支合并纪录
git merge --no-ff -m "merge with no--ff" dev

//删除分支,删除没有合并的分支-D
git branch -d dev

//暂存当前工作区
git stash

//恢复工作区
git stash pop


//更新，抓去
git pull

//clone下来mater分支，可以用其他分支ID获取到
//其他分支代码，但自己还是在master分支..

//推送
git push origin branchName

//如果git pull提示“no tracking information”，
//则说明本地分支和远程分支的链接关系没有创建，
//用命令git branch --set-upstream branch-name origin/branch-name

//查看远程库信息，使用git remote -v；
