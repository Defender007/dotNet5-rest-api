dotnet new wepapi -n <whatever the Project name> -> Catalog

disable browser relaunch in ".vscode/launch.json"

sets up group build in ".vscode/task.json"

<!-- to generate self-signed certificate for client -->
dotnet dev-certs https --trust

<!-- MongoDB Nuget package -->
dotnet add package MongoDB.Driver

<!-- run docker container for MongoDB -->
docker run -d --rm --name mongo -p 27017:27017 -v mongodata:data/db mongo
