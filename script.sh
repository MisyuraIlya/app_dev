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

# FRONT .ENV
echo "REACT_APP_API_URL=${REACT_APP_API_URL}" > ReactApp/.env
echo "REACT_APP_MEDIA=${REACT_APP_MEDIA}" >> ReactApp/.env
echo "REACT_APP_PRIMARY=${REACT_APP_PRIMARY}" >> ReactApp/.env
echo "REACT_APP_SECONDARY=${REACT_APP_SECONDARY}" >> ReactApp/.env
echo "REACT_APP_TITLE=${REACT_APP_TITLE}" >> ReactApp/.env
echo "REACT_APP_DESCRIPTION=${REACT_APP_DESCRIPTION}" >> ReactApp/.env
echo "IS_MUST_DELIVERY_PRICE=${IS_MUST_DELIVERY_PRICE}" >> ReactApp/.env
echo "DELIVERY_PRICE=${DELIVERY_PRICE}" >> ReactApp/.env
echo "MINIMUM_DELIVERY_PRICE=${MINIMUM_DELIVERY_PRICE}" >> ReactApp/.env
echo "IS_MAX_ORDER_DISCOUNT=${IS_MAX_ORDER_DISCOUNT}" >> ReactApp/.env
echo "MAX_PRICE_FOR_DISCOUNT=${MAX_PRICE_FOR_DISCOUNT}" >> ReactApp/.env
echo "DISCOUNT_PERCENT_FOR_MAX_PRICE=${DISCOUNT_PERCENT_FOR_MAX_PRICE}" >> ReactApp/.env

# BACKEND .ENV
echo "# In all environments, the following files are loaded if they exist," > ApiTemplate/.env
echo "# the latter taking precedence over the former:" >> ApiTemplate/.env
echo "#  * .env                contains default values for the environment variables needed by the app" >> ApiTemplate/.env
echo "#  * .env.local          uncommitted file with local overrides" >> ApiTemplate/.env
echo "#  * .env.\$APP_ENV       committed environment-specific defaults" >> ApiTemplate/.env
echo "#  * .env.\$APP_ENV.local uncommitted environment-specific overrides" >> ApiTemplate/.env
echo "#" >> ApiTemplate/.env
echo "# Real environment variables win over .env files." >> ApiTemplate/.env
echo "#" >> ApiTemplate/.env
echo "# DO NOT DEFINE PRODUCTION SECRETS IN THIS FILE NOR IN ANY OTHER COMMITTED FILES." >> ApiTemplate/.env
echo "# https://symfony.com/doc/current/configuration/secrets.html" >> ApiTemplate/.env
echo "#" >> ApiTemplate/.env
echo "# Run \"composer dump-env prod\" to compile .env files for production use (requires symfony/flex >=1.2)." >> ApiTemplate/.env
echo "# https://symfony.com/doc/current/best_practices.html#use-environment-variables-for-infrastructure-configuration" >> ApiTemplate/.env

echo "###> symfony/framework-bundle ###" >> ApiTemplate/.env
echo "APP_ENV=dev" >> ApiTemplate/.env
echo "APP_SECRET=90459d5cc76b79a85bb30a81236feefa" >> ApiTemplate/.env
echo "###< symfony/framework-bundle ###" >> ApiTemplate/.env

echo "###> doctrine/doctrine-bundle ###" >> ApiTemplate/.env
echo "# Format described at https://www.doctrine-project.org/projects/doctrine-dbal/en/latest/reference/configuration.html#connecting-using-a-url" >> ApiTemplate/.env
echo "# IMPORTANT: You MUST configure your server version, either here or in config/packages/doctrine.yaml" >> ApiTemplate/.env
echo "# DATABASE_URL=\"sqlite:///%kernel.project_dir%/var/data.db\"" >> ApiTemplate/.env
echo "# DATABASE_URL=\"mysql://app:!ChangeMe!@127.0.0.1:3306/app?serverVersion=8.0.32&charset=utf8mb4\"" >> ApiTemplate/.env
echo "# DATABASE_URL=\"mysql://app:!ChangeMe!@127.0.0.1:3306/app?serverVersion=10.11.2-MariaDB&charset=utf8mb4\"" >> ApiTemplate/.env
echo "DATABASE_URL=\"mysql://${DB_USERNAME}:${DB_PASSWORD}@${DB_HOST}:3306/${DB_NAME}?serverVersion=15&charset=utf8\"" >> ApiTemplate/.env
echo "###< doctrine/doctrine-bundle ###" >> ApiTemplate/.env

echo "###> nelmio/cors-bundle ###" >> ApiTemplate/.env
echo "CORS_ALLOW_ORIGIN='^https?://(localhost|127\.0\.0\.1)(:[0-9]+)?$'" >> ApiTemplate/.env
echo "###< nelmio/cors-bundle ###" >> ApiTemplate/.env

echo "###> lexik/jwt-authentication-bundle ###" >> ApiTemplate/.env
echo "JWT_SECRET_KEY=%kernel.project_dir%/config/jwt/private.pem" >> ApiTemplate/.env
echo "JWT_PUBLIC_KEY=%kernel.project_dir%/config/jwt/public.pem" >> ApiTemplate/.env
echo "JWT_PASSPHRASE=701ac75f16f09b77dc7745f8c1ffb1823c1eb85e1ccd8c4f0dd51736e58dbdc3" >> ApiTemplate/.env
echo "###< lexik/jwt-authentication-bundle ###" >> ApiTemplate/.env

echo "# ========= DEPLOY CONFIG (Images Serivce || FTP Service) =========" >> ApiTemplate/.env
echo "VPS_1_SERVER=${VPS_1_SERVER}" >> ApiTemplate/.env
echo "VPS_1_USERNAME=${VPS_1_USERNAME}" >> ApiTemplate/.env
echo "VPS_1_PASSWORD=${VPS_1_PASSWORD}" >> ApiTemplate/.env
echo "VPS_1_FOLDER=${VPS_1_FOLDER}" >> ApiTemplate/.env
echo "VPS_1_OUTPUT_FOLDER=${VPS_1_OUTPUT_FOLDER}" >> ApiTemplate/.env
echo "DOMAIN_IMAGE=${DOMAIN_IMAGE}" >> ApiTemplate/.env
echo "NOTIFICATION_IDENTIFIER=${NOTIFICATION_IDENTIFIER}" >> ApiTemplate/.env

echo "# ========= ERP CONFIG (Online and Cron services)=========" >> ApiTemplate/.env
echo "ERP_TYPE=${ERP_TYPE}" >> ApiTemplate/.env
echo "ERP_USERNAME=${ERP_USERNAME}" >> ApiTemplate/.env
echo "ERP_PASSWORD=${ERP_PASSWORD}" >> ApiTemplate/.env
echo "ERP_URL=${ERP_URL}" >> ApiTemplate/.env

echo "# ========= SEND ORDER CONFIG =========" >> ApiTemplate/.env
echo "IS_MUST_DELIVERY_PRICE=${IS_MUST_DELIVERY_PRICE}" >> ApiTemplate/.env
echo "MINIMUM_DELIVERY_PRICE=${MINIMUM_DELIVERY_PRICE}" >> ApiTemplate/.env

echo "IS_MAX_ORDER_DISCOUNT=${IS_MAX_ORDER_DISCOUNT}" >> ApiTemplate/.env
echo "MAX_PRICE_FOR_DISCOUNT=${MAX_PRICE_FOR_DISCOUNT}" >> ApiTemplate/.env
echo "DISCOUNT_PRECENT_FOR_MAX_PRICE=${DISCOUNT_PRECENT_FOR_MAX_PRICE}" >> ApiTemplate/.env

echo "# ========= CONFIG ==========" >> ApiTemplate/.env
echo "IS_USED_MIGVAN=${IS_USED_MIGVAN}" >> ApiTemplate/.env
echo "IS_ONLINE_PRICE=${IS_ONLINE_PRICE}" >> ApiTemplate/.env
echo "IS_ONLINE_STOCK=${IS_ONLINE_STOCK}" >> ApiTemplate/.env
echo "IS_ONLINE_MIGVAN=${IS_ONLINE_MIGVAN}" >> ApiTemplate/.env




# Display a message indicating that the script has run
echo "Environment variables initialized."
