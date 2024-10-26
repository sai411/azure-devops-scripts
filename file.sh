#!/bin/bash

# Define variables
agentInfo_env="${DASHBOARD_ENV}-agentInfo-env"
account_search_url="${DASHBOARD_ENV}-account-search-url"
ovas_application_db_keyspace="${CSH}-ovas-application-db-keyspace"

# Assign values
declare "${agentInfo_env}"="${DASHBOARD_ENV}"
declare "${account_search_url}"="https://${CSH}-oneview-accountsearch.rogers.com/web/a/dashboard/account-search"
declare "${ovas_application_db_keyspace}"="${DASHBOARD_ENV}_ute"

# Print the values
echo "${!agentInfo_env}"
echo "${!account_search_url}"
echo "${!ovas_application_db_keyspace}"

# Example of using indirect reference
echo "Printing dynamically: ${!agentInfo_env}"
