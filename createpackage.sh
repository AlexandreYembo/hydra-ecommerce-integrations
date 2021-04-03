#!/bin/bash
GIT_API_KEY=<your git apikey>
NUGET_API_KEY=<your nuget apikey>
VERSION=1.0.0 #for each release you change csproj with version and update here.

dotnet pack --configuration Release
dotnet nuget push Hydra.User.Integration/bin/Release/Hydra.User.Integration.$VERSION.nupkg --api-key $GIT_API_KEY --source "https://nuget.pkg.github.com/alexandreyembo/index.json"

dotnet nuget push Hydra.User.Integration/bin/Release/Hydra.User.Integration.$VERSION.nupkg --api-key $NUGET_API_KEY --source https://api.nuget.org/v3/index.json
