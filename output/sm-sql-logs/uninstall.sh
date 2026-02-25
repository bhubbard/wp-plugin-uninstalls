#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sm_sql_logs_options'
wp option delete 'sm_sql_logs_settings'
wp option delete 'sql_logs_db_version'
wp option delete 'SM_SQL_LOGS_VERSION'

