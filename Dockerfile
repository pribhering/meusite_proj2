# Use a imagem de runtime do .NET Core
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS runtime
WORKDIR /app

# Copie o arquivo para pasta raiz
COPY out ./

# Expõe a porta e inicia o aplicativo
EXPOSE 80
ENTRYPOINT ["dotnet", "MeuSite.dll"]
