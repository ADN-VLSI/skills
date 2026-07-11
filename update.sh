#!/bin/bash
sed -i "s|const REDIRECT_URL = .*|const REDIRECT_URL = \"$1\"; // REPLACE THIS REDIRECT_URL|" index.html
git add index.html
git commit -m "Update redirect URL to $1" || echo "No changes to commit"
git pull origin main
git push origin main
