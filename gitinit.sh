proto="$(echo $1 | grep :// | sed -e's,^\(.*://\).*,\1,g')"
url="$(echo ${1/$proto/})"
path="$(echo $url | grep / | cut -d/ -f2-)"

echo "# $path" > README.md # Making a README.md file with the name of the repo as the title
echo "# Logs
logs
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*
pnpm-debug.log*
lerna-debug.log*

node_modules
dist
dist-ssr
*.local

# Editor directories and files
.vscode/*
!.vscode/extensions.json
.idea
.DS_Store
*.suo
*.ntvs*
*.njsproj
*.sln
*.sw?
" > .gitignore # Making a multi-line .gitignore file
git init
git add .
git commit -m "Initial commit"
git remote add origin $1 # $1 is the first argument passed to the script, pass the url of the repo
git branch -M main
git push -u origin main