git config --global user.name "Your Name"
git config --global user.email "email@example.com"

git init

git add file 		//staged
git commit -m ""


git diff file		//modified,no add
git diff HEAD -- file 	//比较工作区和版本库

git reset HEAD file 	//unstaged
git checkout -- file  	//discard changes,modified,no add

git log [--pretty=oneline]	//会显示所有日志
git reset --hard HEAD^	//会退到上一个版本，多个^回到更早版本
	//HEAD^等价HEAD1,HEAD^^等价HEAD2
git reset --hard <commit id> 	//到指定版本，回退前进都可以
git reflog 	//git operation record

git rm file
