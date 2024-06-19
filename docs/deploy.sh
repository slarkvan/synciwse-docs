#!/bin/bash

# 运行 add 命令
git add .
git commit -m "auto commit"

# 如果 add 命令成功执行，然后部署到 Vercel
if [ $? -eq 0 ]; then
    vercel --prod
else
    echo "Add 命令失败，未执行 Vercel 部署。"
fi
