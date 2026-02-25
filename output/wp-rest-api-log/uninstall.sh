#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-plugin-activated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-plugin-version'"
wp option delete 'wp-rest-api-log-db-notice-dismissed'
wp option delete 'wp-rest-api-log-plugin-activated'

# Clear Cron Jobs
wp cron event delete 'wp-rest-api-log-purge-old-records'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_rest_api_log_migrated_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_rest_api_log_migrated_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_rest_api_log_migrated_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_rest_api_log_migrated_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_request_body'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_request_body'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_request_body'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_request_body'"
