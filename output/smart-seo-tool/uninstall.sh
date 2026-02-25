#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wb_sst_db_ver'
wp option delete 'sseot_other_cnf'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rewrite'"
wp option delete 'sseot_guide'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ver'"
wp option delete 'wb_sst_ver'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wb_sst_cnf_%'"
wp option delete 'wb_sst_daily_ping_time'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'wb_smart_seo_tool_cron'
wp cron event delete 'wb_sst_ping_daily'
wp cron event delete 'wb_sst_ping'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_top_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_top_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_top_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_top_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_sst_seo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_sst_seo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_sst_seo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_sst_seo'"
