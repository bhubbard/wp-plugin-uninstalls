#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shwcp_main_settings%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shwcp_permissions%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shwcp_frontend_settings%'"
wp option delete 'classic-editor-replace'
wp option delete 'shwcp_db_ver'

# Clear Cron Jobs
wp cron event delete 'wcp_cron_schedule_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcp_db_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcp_db_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcp_db_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcp_db_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
