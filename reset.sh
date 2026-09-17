git checkout --orphan new-main
git add -A
git commit -m "Initial commit (clean history)"

# 3. 替换旧分支
git branch -D main
git branch -m main

# 4. 强制推送到 GitHub
git push -f origin main

# 5. 清理本地引用（可选）
git remote prune origin
git reflog expire --expire=now --all
git gc --prune=now --aggressive