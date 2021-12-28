dotnet new wepapi -n <whatever the Project name> -> Catalog

disable browser relaunch in ".vscode/launch.json"

sets up group build in ".vscode/task.json"

<!-- to generate self-signed certificate for client -->
dotnet dev-certs https --trust

<!-- MongoDB Nuget package -->
dotnet add package MongoDB.Driver

<!-- run docker container for MongoDB -->
docker run -d --rm --name mongo -p 27017:27017 -v mongodata:/data/db mongo <!-- without -e -->

<!-- with -e  and custom network in Development mode-->
docker run -d --rm --name mongo -p 27017:27017 -v mongodbdata:/data/db -e MONGO_INITDB_ROOT_USERNAME=mongoadmin -e MONGO_INITDB_ROOT_PASSWORD=pass#word1  --network=net5tutorial mongo

<!-- connecting REST-Api app to mongoDB with custom network in Production mode-->
docker run -it --rm -p 8080:80 -e MongoDbSettings:Host=mongo -e MongoDbSettings:Password=pass#word1 --network=net5tutorial catalog:v1

<!-- to add existing local repo to a new remote github repo -->
git remote add origin <remote_repo_url_here>
git branch -M main
git push -u -f origin main

<!-- to checkout a new local branch -->
git checkout -b async-version

<!-- to generate secret keys... -->
dotnet user-secrets init

<!-- using secret manager to set any secret keys/value of any settings in 
appsettings.json in an Development mode... -->
dotnet user-secrets set <Settings_name_here>:<Key> <value>

<!-- add package for health checks-->
dotnet add package AspNetCore.HealthChecks.MongoDB

<!-- to build docker image with tag from current directory -->
docker build -t catalog:v1 .

<!-- to create a custom network -->
docker network create net5tutorial

<!-- to create secrets in pods -->
kubectl create secret generic catalog-secrets --from-literal=mongodb-password='pass#word1'

<!-- apply a kubernetes object from file -->
kubectl apply -f <yaml_file_name.yaml>

<!-- to scale up number of pods -->
kubectl scale deployments/catalog-deployment --replicas=3
