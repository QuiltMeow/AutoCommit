git clone https://$USERNAME:$PASSWORD@github.com/$USERNAME/$REPOSITORY.git
cd $REPOSITORY

# 產生內容
content="Last Commit : $(date)"
echo $content > Output.txt

git config --global user.email $GIT_EMAIL
git config --global user.name $GIT_NAME

# 推送
git add Output.txt
git commit -m "$content"
git push origin main