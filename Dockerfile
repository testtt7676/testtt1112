# Enhanced Dockerfile with Repository Jacking + All Previous Vulnerabilities

# BASE IMAGE REPO JACKING
FROM nonexistent-user/custom-base:latest
FROM abandoned-org/internal-tools:v1.0  
FROM localhost:5000/private-app:latest

# GITHUB REPOSITORY JACKING IN BUILD PROCESS
RUN git clone https://github.com/fake-org/missing-tools.git /tools
RUN git clone https://github.com/deleted-user/build-scripts.git /scripts
ADD https://github.com/abandoned-company/config-files.tar.gz /config
RUN wget https://github.com/nonexistent-dev/installer.sh && bash installer.sh
RUN curl -sSL https://github.com/missing-org/setup.sh | bash

# DEPENDENCY CONFUSION (existing)
RUN apt-get update && apt-get install -y curl wget
RUN npm install @company/internal-auth-lib
RUN pip install company-ml-models  
RUN gem install company_secret_gem
RUN go get company.com/internal/crypto-utils
RUN composer require company/payment-sdk

# SECURITY MISCONFIGURATIONS (existing)
USER root
ENV API_KEY="super-secret-api-key-12345"
ENV DB_PASSWORD="admin123"
ENV GITHUB_TOKEN="ghp_xxxxxxxxxxxxxxxxxxxx"
EXPOSE 22 3389 5432
RUN chmod 777 /app
ADD . /app
MAINTAINER vulnerable-test@example.com
RUN service ssh start

# MORE REPO JACKING PATTERNS
RUN git submodule add https://github.com/missing-team/components.git vendor/components
COPY --from=deleted-user/builder:latest /app/dist /usr/share/nginx/html

WORKDIR /app
COPY package*.json ./
RUN npm install

# Shell form instead of exec form (security issue)
CMD npm start
