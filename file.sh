#!/bin/bash

# Declare associative array to store dynamic values
declare -A env_vars

# Populate associative array with keys that mimic your dynamic naming
env_vars["${DASHBOARD_ENV}_agentInfo_env"]="${DASHBOARD_ENV}"
env_vars["${DASHBOARD_ENV}_account_search_url"]="https://${CSH}-oneview-accountsearch.rogers.com/web/a/dashboard/account-search"
env_vars["${CSH}_ovas_application_db_keyspace"]="${DASHBOARD_ENV}_ute"

# Print values from the associative array
echo "${env_vars[${DASHBOARD_ENV}_agentInfo_env]}"
echo "${env_vars[${DASHBOARD_ENV}_account_search_url]}"
echo "${env_vars[${CSH}_ovas_application_db_keyspace]}"

for key in "${!env_vars[@]}"; do
         value=${env_vars[$key]}
         echo "Adding secret: $key with value: $value"
