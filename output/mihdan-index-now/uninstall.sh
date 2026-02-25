#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crawlwp_bing_indexing_rate_limit_expiration'
wp option delete 'crawlwp_google_indexing_rate_limit_expiration'
wp option delete 'crawlwp_yandex_indexing_rate_limit_expiration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_update'"
