jupyter-book build .
git rm -rf ./docs/*
git cp -r _build/* ./docs/
git add -A 
git commit -m 'autocommit'
git push