dotnet new wepapi -n <whatever the Project name> -> Catalog

disable browser relaunch in ".vscode/launch.json"

sets up group build in ".vscode/task.json"

<!-- to generate self-signed certificate for client -->
dotnet dev-certs https --trust

<!-- MongoDB Nuget package -->
dotnet add package MongoDB.Driver

<!-- run docker container for MongoDB -->
docker run -d --rm --name mongo -p 27017:27017 -v mongodata:/data/db mongo <!-- without -e -->

docker run -d --rm --name mongo -p 27017:27017 -v mongodbdata:/data/db -e MONGO_INITDB_ROOT_USERNAME=mongoadmin -e MONGO_INITDB_ROOT_PASSWORD=pass#word1 mongo <!-- with -e -->

<!-- to add existing local repo to a new remote github repo -->
git remote add origin <remote_repo_url_here>
git branch -M main
git push -u -f origin main

<!-- to checkout a new local branch -->
git checkout -b async-version

<!-- to generate secret keys... -->
dotnet user-secrets init

<!-- to set any secret keys/value of any settings in 
appsettings.json in an environment variable.. -->
dotnet user-secrets set <Settings_name_here>:<Key> <value>

<!-- add package for health checks-->
dotnet add package AspNetCore.HealthChecks.MongoDB 