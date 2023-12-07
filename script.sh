#!/bin/bash

# FRONT
export REACT_APP_API_URL=$1
export REACT_APP_MEDIA=$2
export REACT_APP_PRIMARY=$3
export REACT_APP_SECONDARY=$4
export REACT_APP_TITLE=$5
export REACT_APP_DESCRIPTION=$6

#SHARED
export IS_MUST_DELIVERY_PRICE=$7
export DELIVERY_PRICE=$8
export MINIMUM_DELIVERY_PRICE=${9}
export IS_MAX_ORDER_DISCOUNT=${10}
export MAX_PRICE_FOR_DISCOUNT=${11}
export DISCOUNT_PERCENT_FOR_MAX_PRICE=${12}

#BACKEND
export DB_NAME=${13}
export DB_HOST=${14}
export DB_USERNAME=${15}
export DB_PASSWORD=${16}

export VPS_1_SERVER=${17}
export VPS_1_USERNAME=${18}
export VPS_1_PASSWORD=${19}
export VPS_1_FOLDER=${20}
export VPS_1_OUTPUT_FOLDER=${21}
export DOMAIN_IMAGE=${22}
export NOTIFICATION_IDENTIFIER=${23}

export ERP_TYPE=${24}
export ERP_USERNAME=${25}
export ERP_PASSWORD=${26}
export ERP_URL=${27}

export IS_USED_MIGVAN=${28}
export IS_ONLINE_PRICE=${29}
export IS_ONLINE_STOCK=${30}
export IS_ONLINE_MIGVAN=${31}

export FOLDER=${32}

# FRONT .ENV
echo "REACT_APP_API_URL=${REACT_APP_API_URL}" > ${FOLDER}_front/.env
echo "REACT_APP_MEDIA=${REACT_APP_MEDIA}" >> ${FOLDER}_front/.env
echo "REACT_APP_PRIMARY=${REACT_APP_PRIMARY}" >> ${FOLDER}_front/.env
echo "REACT_APP_SECONDARY=${REACT_APP_SECONDARY}" >> ${FOLDER}_front/.env
echo "REACT_APP_TITLE=${REACT_APP_TITLE}" >> ${FOLDER}_front/.env
echo "REACT_APP_DESCRIPTION=${REACT_APP_DESCRIPTION}" >> ${FOLDER}_front/.env
echo "IS_MUST_DELIVERY_PRICE=${IS_MUST_DELIVERY_PRICE}" >> ${FOLDER}_front/.env
echo "DELIVERY_PRICE=${DELIVERY_PRICE}" >> ${FOLDER}_front/.env
echo "MINIMUM_DELIVERY_PRICE=${MINIMUM_DELIVERY_PRICE}" >> ${FOLDER}_front/.env
echo "IS_MAX_ORDER_DISCOUNT=${IS_MAX_ORDER_DISCOUNT}" >> ${FOLDER}_front/.env
echo "MAX_PRICE_FOR_DISCOUNT=${MAX_PRICE_FOR_DISCOUNT}" >> ${FOLDER}_front/.env
echo "DISCOUNT_PERCENT_FOR_MAX_PRICE=${DISCOUNT_PERCENT_FOR_MAX_PRICE}" >> ${FOLDER}_front/.env

# BACKEND .ENV
echo "# In all environments, the following files are loaded if they exist," > ${FOLDER}_backend/.env
echo "# the latter taking precedence over the former:" >> ${FOLDER}_backend/.env
echo "#  * .env                contains default values for the environment variables needed by the app" >> ${FOLDER}_backend/.env
echo "#  * .env.local          uncommitted file with local overrides" >> ${FOLDER}_backend/.env
echo "#  * .env.\$APP_ENV       committed environment-specific defaults" >> ${FOLDER}_backend/.env
echo "#  * .env.\$APP_ENV.local uncommitted environment-specific overrides" >> ${FOLDER}_backend/.env
echo "#" >> ApiTe${FOLDER}_backendmplate/.env
echo "# Real environment variables win over .env files." >> ${FOLDER}_backend/.env
echo "#" >> ${FOLDER}_backend/.env
echo "# DO NOT DEFINE PRODUCTION SECRETS IN THIS FILE NOR IN ANY OTHER COMMITTED FILES." >> ${FOLDER}_backend/.env
echo "# https://symfony.com/doc/current/configuration/secrets.html" >> ${FOLDER}_backend/.env
echo "#" >> ${FOLDER}_backend/.env
echo "# Run \"composer dump-env prod\" to compile .env files for production use (requires symfony/flex >=1.2)." >> ${FOLDER}_backend/.env
echo "# https://symfony.com/doc/current/best_practices.html#use-environment-variables-for-infrastructure-configuration" >> ${FOLDER}_backend/.env

echo "###> symfony/framework-bundle ###" >> ${FOLDER}_backend/.env
echo "APP_ENV=dev" >> ${FOLDER}_backend/.env
echo "APP_SECRET=90459d5cc76b79a85bb30a81236feefa" >> ${FOLDER}_backend/.env
echo "###< symfony/framework-bundle ###" >> ${FOLDER}_backend/.env

echo "###> doctrine/doctrine-bundle ###" >> ${FOLDER}_backend/.env
echo "# Format described at https://www.doctrine-project.org/projects/doctrine-dbal/en/latest/reference/configuration.html#connecting-using-a-url" >> ${FOLDER}_backend/.env
echo "# IMPORTANT: You MUST configure your server version, either here or in config/packages/doctrine.yaml" >> ${FOLDER}_backend/.env
echo "# DATABASE_URL=\"sqlite:///%kernel.project_dir%/var/data.db\"" >> ${FOLDER}_backend/.env
echo "# DATABASE_URL=\"mysql://app:!ChangeMe!@127.0.0.1:3306/app?serverVersion=8.0.32&charset=utf8mb4\"" >> ${FOLDER}_backend/.env
echo "# DATABASE_URL=\"mysql://app:!ChangeMe!@127.0.0.1:3306/app?serverVersion=10.11.2-MariaDB&charset=utf8mb4\"" >> ${FOLDER}_backend/.env
echo "DATABASE_URL=\"mysql://${DB_USERNAME}:${DB_PASSWORD}@${DB_HOST}:3306/${DB_NAME}?serverVersion=15&charset=utf8\"" >> ${FOLDER}_backend/.env
echo "###< doctrine/doctrine-bundle ###" >> ${FOLDER}_backend/.env

echo "###> nelmio/cors-bundle ###" >> ${FOLDER}_backend/.env
echo "CORS_ALLOW_ORIGIN='^https?://(localhost|127\.0\.0\.1)(:[0-9]+)?$'" >> ${FOLDER}_backend/.env
echo "###< nelmio/cors-bundle ###" >> ${FOLDER}_backend/.env

echo "###> lexik/jwt-authentication-bundle ###" >> ${FOLDER}_backend/.env
echo "JWT_SECRET_KEY=%kernel.project_dir%/config/jwt/private.pem" >> ${FOLDER}_backend/.env
echo "JWT_PUBLIC_KEY=%kernel.project_dir%/config/jwt/public.pem" >> ${FOLDER}_backend/.env
echo "JWT_PASSPHRASE=701ac75f16f09b77dc7745f8c1ffb1823c1eb85e1ccd8c4f0dd51736e58dbdc3" >> ${FOLDER}_backend/.env
echo "###< lexik/jwt-authentication-bundle ###" >> ${FOLDER}_backend/.env

echo "# ========= DEPLOY CONFIG (Images Serivce || FTP Service) =========" >> ${FOLDER}_backend/.env
echo "VPS_1_SERVER=${VPS_1_SERVER}" >> ${FOLDER}_backend/.env
echo "VPS_1_USERNAME=${VPS_1_USERNAME}" >> ${FOLDER}_backend/.env
echo "VPS_1_PASSWORD=${VPS_1_PASSWORD}" >> ${FOLDER}_backend/.env
echo "VPS_1_FOLDER=${VPS_1_FOLDER}" >> ${FOLDER}_backend/.env
echo "VPS_1_OUTPUT_FOLDER=${VPS_1_OUTPUT_FOLDER}" >> ${FOLDER}_backend/.env
echo "DOMAIN_IMAGE=${DOMAIN_IMAGE}" >> ${FOLDER}_backend/.env
echo "NOTIFICATION_IDENTIFIER=${NOTIFICATION_IDENTIFIER}" >> ${FOLDER}_backend/.env

echo "# ========= ERP CONFIG (Online and Cron services)=========" >> ${FOLDER}_backend/.env
echo "ERP_TYPE=${ERP_TYPE}" >> ${FOLDER}_backend/.env
echo "ERP_USERNAME=${ERP_USERNAME}" >> ${FOLDER}_backend/.env
echo "ERP_PASSWORD=${ERP_PASSWORD}" >> ${FOLDER}_backend/.env
echo "ERP_URL=${ERP_URL}" >> ${FOLDER}_backend/.env

echo "# ========= SEND ORDER CONFIG =========" >> ${FOLDER}_backend/.env
echo "IS_MUST_DELIVERY_PRICE=${IS_MUST_DELIVERY_PRICE}" >> ${FOLDER}_backend/.env
echo "MINIMUM_DELIVERY_PRICE=${MINIMUM_DELIVERY_PRICE}" >> ${FOLDER}_backend/.env

echo "IS_MAX_ORDER_DISCOUNT=${IS_MAX_ORDER_DISCOUNT}" >> ${FOLDER}_backend/.env
echo "MAX_PRICE_FOR_DISCOUNT=${MAX_PRICE_FOR_DISCOUNT}" >> ${FOLDER}_backend/.env
echo "DISCOUNT_PRECENT_FOR_MAX_PRICE=${DISCOUNT_PRECENT_FOR_MAX_PRICE}" >> ${FOLDER}_backend/.env

echo "# ========= CONFIG ==========" >> ${FOLDER}_backend/.env
echo "IS_USED_MIGVAN=${IS_USED_MIGVAN}" >> ${FOLDER}_backend/.env
echo "IS_ONLINE_PRICE=${IS_ONLINE_PRICE}" >> ${FOLDER}_backend/.env
echo "IS_ONLINE_STOCK=${IS_ONLINE_STOCK}" >> ${FOLDER}_backend/.env
echo "IS_ONLINE_MIGVAN=${IS_ONLINE_MIGVAN}" >> ${FOLDER}_backend/.env




# Display a message indicating that the script has run
echo "Environment variables initialized."

echo version: '3' >> docker-compose.yml

echo networks: >> docker-compose.yml
echo   nginx-php81-mysql8-node: >> docker-compose.yml

echo services: >> docker-compose.yml
echo  # nginx >> docker-compose.yml
echo  nginx-service: >> docker-compose.yml
echo    image: nginx:stable-alpine >> docker-compose.yml
echo    container_name: nginx-container >> docker-compose.yml
echo    ports: >> docker-compose.yml
echo      - '8080:80' >> docker-compose.yml
echo    volumes: >> docker-compose.yml
echo      - ./${FOLDER}_front:/var/www/project >> docker-compose.yml
echo      - ./nginx/default.conf:/etc/nginx/conf.d/default.conf >> docker-compose.yml
echo    depends_on: >> docker-compose.yml
echo      - php81-service >> docker-compose.yml
echo      - mysql8-service >> docker-compose.yml
echo    networks: >> docker-compose.yml
echo      - nginx-php81-mysql8-node >> docker-compose.yml

echo  # php >> docker-compose.yml
echo  php81-service: >> docker-compose.yml
echo    build: >> docker-compose.yml
echo      context: . >> docker-compose.yml
echo      dockerfile: ./php/Dockerfile >> docker-compose.yml
echo    container_name: php81-container >> docker-compose.yml
echo    ports: >> docker-compose.yml
echo      - '9000:9000' >> docker-compose.yml
echo    volumes: >> docker-compose.yml
echo      - ./${FOLDER}_backend:/var/www/project >> docker-compose.yml
echo    networks: >> docker-compose.yml
echo      - nginx-php81-mysql8-node >> docker-compose.yml

echo  # mysql >> docker-compose.yml
echo  mysql8-service: >> docker-compose.yml
echo    image: mysql:8 >> docker-compose.yml
echo    container_name: mysql8-container >> docker-compose.yml
echo    ports: >> docker-compose.yml
echo      - '4306:3306' >> docker-compose.yml
echo    volumes: >> docker-compose.yml
echo      - ./mysql:/var/lib/mysql >> docker-compose.yml
echo    command: --default-authentication-plugin=mysql_native_password --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci >> docker-compose.yml
echo    restart: always # always restart unless stopped manually >> docker-compose.yml
echo    environment: >> docker-compose.yml
echo      MYSQL_ROOT_PASSWORD: secret >> docker-compose.yml
echo      MYSQL_PASSWORD: secret >> docker-compose.yml
echo    networks: >> docker-compose.yml
echo      - nginx-php81-mysql8-node >> docker-compose.yml

echo  # react app >> docker-compose.yml
echo  react-app-service: >> docker-compose.yml
echo    build: >> docker-compose.yml 
echo      context: . >> docker-compose.yml
echo      dockerfile: ./${FOLDER}_front/Dockerfile >> docker-compose.yml
echo    container_name: react-app-container >> docker-compose.yml
echo    ports: >> docker-compose.yml
echo      - '3000:3000' >> docker-compose.yml
echo    volumes: >> docker-compose.yml
echo      - ./${FOLDER}_front:/var/www/${FOLDER} >> docker-compose.yml
echo    working_dir: /var/www/${FOLDER} >> docker-compose.yml

echo "version: '3'" > docker-compose.yml
echo " "  >> docker-compose.yml
echo "networks:" >> docker-compose.yml
echo "  nginx-php81-mysql8-node:" >> docker-compose.yml
echo " " >> docker-compose.yml
echo "services:" >> docker-compose.yml
echo " " >> docker-compose.yml
echo "  nginx-service:" >> docker-compose.yml
echo "    image: nginx:stable-alpine" >> docker-compose.yml
echo "    container_name: nginx-container-${FOLDER}" >> docker-compose.yml
echo "    ports:" >> docker-compose.yml
echo "      - '8080:80'" >> docker-compose.yml
echo "    volumes:" >> docker-compose.yml
echo "      - ./${FOLDER}_backend:/var/www/project" >> docker-compose.yml
echo "      - ./nginx/default.conf:/etc/nginx/conf.d/default.conf" >> docker-compose.yml
echo "    depends_on:" >> docker-compose.yml
echo "      - php81-service" >> docker-compose.yml
echo "      - mysql8-service" >> docker-compose.yml
echo "    networks:" >> docker-compose.yml
echo "      - nginx-php81-mysql8-node" >> docker-compose.yml
echo " " >> docker-compose.yml
echo "  php81-service:" >> docker-compose.yml
echo "    build:" >> docker-compose.yml
echo "      context: ." >> docker-compose.yml
echo "      dockerfile: ./php/Dockerfile" >> docker-compose.yml
echo "    container_name: php81-container-${FOLDER}" >> docker-compose.yml
echo "    ports:" >> docker-compose.yml
echo "      - '9000:9000'" >> docker-compose.yml
echo "    volumes:" >> docker-compose.yml
echo "      - ./${FOLDER}_backend:/var/www/project" >> docker-compose.yml
echo "    networks:" >> docker-compose.yml
echo "      - nginx-php81-mysql8-node" >> docker-compose.yml
echo " " >> docker-compose.yml
echo "  mysql8-service:" >> docker-compose.yml
echo "    image: mysql:8" >> docker-compose.yml
echo "    container_name: mysql8-container-${FOLDER}" >> docker-compose.yml
echo "    ports:" >> docker-compose.yml
echo "      - '4306:3306'" >> docker-compose.yml
echo "    volumes:" >> docker-compose.yml
echo "      - ./mysql:/var/lib/mysql" >> docker-compose.yml
echo "    command: --default-authentication-plugin=mysql_native_password --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci" >> docker-compose.yml
echo "    restart: always" >> docker-compose.yml
echo "    environment:" >> docker-compose.yml
echo "      MYSQL_ROOT_PASSWORD: secret" >> docker-compose.yml
echo "      MYSQL_PASSWORD: secret" >> docker-compose.yml
echo "    networks:" >> docker-compose.yml
echo "      - nginx-php81-mysql8-node" >> docker-compose.yml
echo " " >> docker-compose.yml
echo "  react-app-service:" >> docker-compose.yml
echo "    build:" >> docker-compose.yml 
echo "      context: ." >> docker-compose.yml
echo "      dockerfile: ./${FOLDER}_front/Dockerfile" >> docker-compose.yml
echo "    container_name: react-app-container-${FOLDER}" >> docker-compose.yml
echo "    ports:" >> docker-compose.yml
echo "      - '3000:3000'" >> docker-compose.yml
echo "    volumes:" >> docker-compose.yml
echo "      - ./${FOLDER}_front:/var/www/react-app" >> docker-compose.yml
echo "    working_dir: /var/www/react-app" >> docker-compose.yml
