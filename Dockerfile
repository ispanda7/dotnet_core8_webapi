# Use the official .NET SDK image to build the application
# This image contains the .NET SDK needed to build and run your app
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env

# Set the working directory in the container
WORKDIR /app

# Copy the .csproj file and restore any dependencies
# This allows you to take advantage of Docker's layer caching
COPY *.csproj ./
RUN dotnet restore

# Copy the rest of the application source code
COPY . ./

# Build the application
RUN dotnet publish -c Release -o out

# Use the official runtime-only image for running the app
# This image contains only the .NET runtime and is much smaller
FROM mcr.microsoft.com/dotnet/aspnet:8.0

# Set the working directory in the container
WORKDIR /app

# Copy the build output from the SDK image to the runtime image
COPY --from=build-env /app/out .

# Expose the port your application is running on
EXPOSE 8080

# Set the entry point to run the application
ENTRYPOINT ["dotnet", "dotnet_core8.dll"]
