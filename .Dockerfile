FROM redis:7.2.4-bookworm
RUN apt-get update \
  && apt-get install wget -y \
  && wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
  && dpkg -i packages-microsoft-prod.deb \
  && rm packages-microsoft-prod.deb \
  && apt-get update \
  && apt-get install -y dotnet-sdk-7.0 \
  && apt-get clean \
  && dotnet --info
