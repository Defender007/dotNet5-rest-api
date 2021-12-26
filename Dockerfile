FROM mcr.microsoft.com/dotnet/aspnet:5.0-focal AS base
WORKDIR /app
EXPOSE 80

ENV ASPNETCORE_URLS=http://+:80

FROM mcr.microsoft.com/dotnet/sdk:5.0-focal AS build
WORKDIR /src
COPY ["Catalog.csproj", "./"]
RUN dotnet restore "Catalog.csproj"
COPY . .
# WORKDIR "/src/." //+++ taofeeka
# RUN dotnet build "Catalog.csproj" -c Release -o /app/build //+++ taofeeka

# FROM build AS publish //+++ taofeeka
RUN dotnet publish "Catalog.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
# COPY --from=publish /app/publish . //+++ taofeeka
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "Catalog.dll"]
