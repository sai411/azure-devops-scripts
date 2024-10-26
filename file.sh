#!/bin/bash

echo ${DASHBOARD_ENV}-agentInfo-env
echo ${DASHBOARD_ENV}-account-search-url__
echo ${CSH}-ovas-application-db-keyspace__

${DASHBOARD_ENV}-agentInfo-env="${DASHBOARD_ENV}"
${DASHBOARD_ENV}-account-search-url__="https://${CSH}-oneview-accountsearch.rogers.com/web/a/dashboard/account-search"
${CSH}-ovas-application-db-keyspace__="${DASHBOARD_ENV}_ute" 


echo  ${${DASHBOARD_ENV}-agentInfo-env)
